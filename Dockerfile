FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:d2ebc22b2ccb092ed253fca2f8928b108440c8017e5f7320443f8dc703c47267

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
