FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:8b8d92620d32cb1c295b301af23652b099c4bc15e982896c980fca25a3351b19

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
