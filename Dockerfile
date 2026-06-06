FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:e69685ef90f77adb3a27ad0f089bd59c9c14a6c92483467dc26119a1834edcf2

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
