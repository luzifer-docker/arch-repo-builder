#!/usr/local/bin/dumb-init /bin/bash
set -euo pipefail

: ${TIMEOUT:=0} # allow to restrict runtime of the makepkg build

MAKEPKG_OPTS=(-cCs --noconfirm --needed)
REPOADD_OPTS=()
SKIP_VERIFY="${SKIP_VERIFY:-}"

while getopts ":hRs" opt; do
  case "${opt}" in
  R) # Remove older version of package from repo
    REPOADD_OPTS+=(-R)
    ;;
  s) # Skip PGP check for source signatures
    SKIP_VERIFY="true"
    ;;
  h | *) # Display help
    echo "Usage:"
    grep '\s.)\ #' $0
    exit 1
    ;;
  esac
done

SRC=${1:-}

# Override WORKDIR
cd /src

if [ ! -e PKGBUILD ]; then
  if [ -z "${SRC}" ]; then
    echo "No /src/PKGBUILD was found and no repo to clone was given as parameter"
    exit 1
  fi

  # Ensure permissions on src
  chown -R builder /src

  gosu builder git clone "${SRC}" /src/git
  cd /src/git
fi

[[ ${SKIP_VERIFY:-} == true ]] && {
  MAKEPKG_OPTS+=(--skippgpcheck)
}

[ -e /config/signing.asc ] && {
  gosu builder gpg --import </config/signing.asc
  MAKEPKG_OPTS+=(--sign)
  REPOADD_OPTS+=(--sign)
}

if [ -e /config/pacman.conf ]; then
  # Allow full overwrite of pacman.conf
  cp /config/pacman.conf /etc/pacman.conf
elif [ -e /config/pacman.conf.partial ]; then
  # Allow to provide a partial pacman.conf to append
  cat /config/pacman.conf.partial >>/etc/pacman.conf
fi

# Update pacman index and any updated package
pacman -Syyu --noconfirm

# Retrieve GPG keys if required
gosu builder getkeys.sh

# Execute the build itself
gosu builder timeout ${TIMEOUT} makepkg ${MAKEPKG_OPTS[@]}

PACKAGE=($(find . -regextype egrep -regex '^.*\.pkg(|\.tar|\.tar\.xz|\.tar\.zst)$'))

REPODB=$(find /repo -regextype egrep -regex '^.*\.db(\.tar|\.tar\.xz|\.tar.zst)$')
if [ -z "${REPODB}" ]; then
  echo "No database found in /repo, not adding package."
  echo "The built package is available in ${PACKAGE}"
  exit 0
fi

for pkg_file in "${PACKAGE[@]}"; do
  gosu builder mv ${pkg_file}* /repo

  pushd /repo
  gosu builder repo-add ${REPOADD_OPTS[@]} ${REPODB} "${pkg_file}"
  popd
done
