FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:ae01bf0baaea964951e9d77e6becbc6ae96ebf15b6ff5596753105ce2696a12d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
