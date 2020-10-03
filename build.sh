#!/bin/bash
set -euxo pipefail

required_packages=(
	base-devel
	curl
	git
)

luzifer_pkg_key="6F73A4F39CDF652E3F944142085AA223D0391BF9"
keyserver="hkp://keyserver.ubuntu.com"

# Update system to latest state and install required packages
pacman -Sy
pacman -S --noconfirm --needed "${required_packages[@]}"

# Add new build user and allow it to `sudo`
useradd -m -u 1000 builder
echo "builder ALL=(ALL) NOPASSWD: ALL" >/etc/sudoers.d/builder

# Configure keyserver for builder user
mkdir ~builder/.gnupg
echo "keyserver ${keyserver}" >~builder/.gnupg/gpg.conf
chown -R builder ~builder/.gnupg
chmod 0700 ~builder/.gnupg

# Install
pacman-key --init
pacman-key --keyserver "${keyserver}" -r "${luzifer_pkg_key}"
pacman-key --lsign-key "${luzifer_pkg_key}"

# Install dumb-init and gosu
curl -sSfLo /usr/local/bin/dumb-init "https://github.com/Yelp/dumb-init/releases/download/v1.2.1/dumb-init_1.2.1_amd64"
curl -sSfLo /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.11/gosu-amd64"
chmod 0755 \
	/usr/local/bin/dumb-init \
	/usr/local/bin/gosu
