FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:13073365da30947eb2a39e26115222ba1557f53da5f9c344cafea6091a115f14

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
