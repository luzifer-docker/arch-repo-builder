FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:1d999f02a2e97bac4e66e9f6d81d3b645436e3a22854c19e3e342af0d6f15238

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
