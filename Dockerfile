FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:eabd28b8eba9e65a7aa66cc81c73cbb9f9ef8e3c33b96c16db576cca3acaf320

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
