FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:6d8e72186a4ca1308cd1d4c28fdc05b536d7c38198ec05287fa10bd4b183749c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
