FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:3cb91c1160e78ad4b46e177ab21d1f4e1b7e7c93fb485d4f59b9fffefdc3d262

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
