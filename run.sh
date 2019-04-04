#!/usr/local/bin/dumb-init /bin/bash
set -euxo pipefail

SRC=${1:-}
MAKEPKG_OPTS=(-cCs --noconfirm --needed)
REPOADD_OPTS=()

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

[ -e /config/signing.asc ] && {
	gosu builder gpg --import </config/signing.asc
	MAKEPKG_OPTS+=(--sign)
	REPOADD_OPTS+=(--sign)
}

# Update pacman index
pacman -Sy

# Retrieve GPG keys if required
gosu builder getkeys.sh

# Execute the build itself
gosu builder makepkg ${MAKEPKG_OPTS[@]}

PACKAGE=$(ls *.pkg.tar.xz) # This should be only one file

REPODB=$(find /repo -name '*.db.tar.xz')
if [ -z "${REPODB}" ]; then
	echo "No database found in /repo, not adding package."
	echo "The built package is available in ${PACKAGE}"
	exit 0
fi

gosu builder mv ${PACKAGE}* /repo

cd /repo
gosu builder repo-add ${REPOADD_OPTS[@]} ${REPODB} "${PACKAGE}"
