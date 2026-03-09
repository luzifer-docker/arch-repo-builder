FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:2e50786d7aacd6c68b5025740404f6c7dbbb838a53a30d0e9c6091adac8dc8a9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
