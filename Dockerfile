FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:6ed38d127fcf6d6f3752836a439cde10e73523c93bcdf6d3b0bf8d5e3d4aeb18

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
