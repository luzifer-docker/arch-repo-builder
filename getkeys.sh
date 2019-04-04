#!/bin/bash
set -euo pipefail

[ -f "PKGBUILD" ] || {
	echo "No PKGBUILD file found"
	exit 1
}

source PKGBUILD

[ -n "${validgpgkeys:-}" ] || {
	echo "No 'validgpgkeys' directive found, nothing to do"
	exit 0
}

exec gpg --recv-keys "${validgpgkeys[@]}"
