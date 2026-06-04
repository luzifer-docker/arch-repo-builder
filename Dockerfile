FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:a19410ffcaf08024a85eaf82085eb30b470c11a091ee5e487845b6647684c16b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
