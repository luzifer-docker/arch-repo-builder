FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:bfbc21643629272abf21b5ef49734724de6afcc6a4040d2895ed9d222bffd64b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
