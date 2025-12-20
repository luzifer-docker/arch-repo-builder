FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:667eb01a448fa2a4fd2a52535d8270f906346a153c3bb38ef2935e5e81feea51

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
