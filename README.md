# luzifer-docker / arch-repo-builder

This repo contains a docker image to build and automatically add Archlinux packages to a local repository (which then can be served through an HTTP server).

## Usage

### Local `PKGBUILD`
First possibility to use this image is to build a local `PKGBUILD` file:

```bash
docker run --rm -ti \
	-v "$(pwd):/src" \
	-v "/path/to/repo:/repo" \
	ghcr.io/luzifer-docker/arch-repo-builder:latest
```

This will build an image from this Gist, take the local `PKGBUILD` in `/src`, build the package, move the result into `/repo` and add it to the `*.db.tar.*` file found in the repo. (Which means you need to initialize the repo first: `repo-add /path/to/repo/reponame.db.tar.xz`)

### Remote git repository
The second possibility is to build any git repo containing a `PKGBUILD` file:

```bash
docker run --rm -ti \
	-v "/path/to/repo:/repo" \
	ghcr.io/luzifer-docker/arch-repo-builder:latest \
	https://aur.archlinux.org/nerd-fonts-dejavu-complete.git
```

This will clone the given repository and then execute the same process as above.

### Build without repo
If no db-file was found in `/repo` the package will not be added to the repo but only reside in the mounted `/src`.
