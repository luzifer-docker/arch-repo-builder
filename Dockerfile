FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:cbea242545e6e7d999d792c65a2d9b7ffa2f5ce6557f36d9d3713563151448e0

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
