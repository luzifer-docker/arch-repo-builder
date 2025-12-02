FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:6cc5292df89ba24c596db62fafbfddee85816a8ad98c76d79a09a73fa1c96e9a

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
