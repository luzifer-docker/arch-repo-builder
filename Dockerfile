FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:d40db8e9c96f7d69eb26d896e92d0b39d02e2a3501aeb17f29804d537e318db8

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
