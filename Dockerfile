FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:1bc50a63164241dc82fc9fbaec8f49145fe37d9f944b5a8020c10073baf07fcd

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
