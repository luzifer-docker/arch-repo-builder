FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:cc05401f76d82a48b8d6d562860c4f2c7a5ee56709a3f197812775f92675f3b9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
