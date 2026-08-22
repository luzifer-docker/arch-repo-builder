FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:d244c645e066e1e965dc2920d9545b8c22b5413745a1972585e4c682ec4067d0

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
