FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:28b8cd0975b368c975d4aec575737e51884e6affc59a4ca4d2874fdaa2d12c5d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
