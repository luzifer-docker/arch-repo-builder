FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:8d022fb6a0f9ba8673fade4efcd0ed111fbc4bea2815c872bc08515e449d6e5a

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
