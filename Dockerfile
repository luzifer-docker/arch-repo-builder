FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:e43125b48e497fa682d858ae5014cbc0e4ce1f3eeced40916ccaf2f797c6ed92

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
