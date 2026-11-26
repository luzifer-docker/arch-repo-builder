FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:008f923b32e86210be8297ff0a4d1751fe6165389b14d592fd2ac8ef9c3db9d8

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
