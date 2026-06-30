FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:e1954321a4d7e7ed8160aeee814aea2c85e97e56833dcf7fe6ad4c8f1a08b909

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
