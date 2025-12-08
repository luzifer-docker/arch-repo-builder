FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:29b23996212975986ecb8c856da61e47c9e85f2adfab83748b7ea092997e14b0

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
