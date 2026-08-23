FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:4b7f681b79da7af6e58379023d11fbd7cd24a0c4ea3a68cb8766b958ca9c496e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
