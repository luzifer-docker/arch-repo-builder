FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:4583810505c3ee67d955037a90ee91d8c4b10718fe22dbdae22989ccc226f658

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
