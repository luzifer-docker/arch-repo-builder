FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:88acdb6b59734be865a5d1cfe113fecb407fd1a836449f3541492577f0e1efa5

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
