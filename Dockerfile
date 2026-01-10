FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b2d2edbc612b1b3467bc6ff05874bf319163e8476ce9be0cabac2585e8760a8e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
