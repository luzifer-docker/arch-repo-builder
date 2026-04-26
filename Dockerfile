FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:ae9c009acca010e7f697b957e5952e09913d08a8d3e0bc6ab4849c290e5c2452

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
