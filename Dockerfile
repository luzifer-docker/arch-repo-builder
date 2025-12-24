FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:8f694ed4b96b869afb02d685a9052f553b6f87e43d7c5723a0d0ab21c7d875e2

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
