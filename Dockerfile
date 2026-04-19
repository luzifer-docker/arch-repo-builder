FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:c86d0be831a9c6f6904291aa51f853141b7bc74ef37e30f2085472021701c7ea

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
