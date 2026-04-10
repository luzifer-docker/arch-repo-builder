FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b0c48ac4df93188a4726d75c7e163d85b31b1881e56b8ff2f3c4dd60e6a9c92d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
