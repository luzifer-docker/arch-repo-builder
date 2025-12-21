FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:d6261087409bce27a22b4b15bfbd394ed69bcfcf46dc5a9e28a2478c39d8c1c6

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
