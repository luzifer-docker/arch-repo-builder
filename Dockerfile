FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:2a84203dd5b76f74fb97e86fb2a4db2c1aae8c4adf93f48006580471b9934c94

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
