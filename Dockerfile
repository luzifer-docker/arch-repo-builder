FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:27ac7daa990c9dcd48f8e72129c23448bc90a769448762d93eaa637683293136

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
