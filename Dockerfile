FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:60f05ab429442e58c0a2a017cd04c4769f4029e6090cce8ad7af3b698e01e874

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
