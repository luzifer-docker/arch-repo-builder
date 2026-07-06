FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:5c12530742a179ca1f0cd81f6db174e775424494af652383e5d455a0d0f1d8fc

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
