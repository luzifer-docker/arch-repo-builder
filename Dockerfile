FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:9fb7399212493f631a04d6daf2f56e8f569dec6cac257ddba3a53b6bb2f71617

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
