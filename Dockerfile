FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:c8113c7acd8157e5719a9d1464610879960cc897545ced6055a8d1d35ed1817e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
