FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b0c8e69d24c37b24e1e2473d7ee0d7b7e567017bc241e8df53eaa27fef90b081

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
