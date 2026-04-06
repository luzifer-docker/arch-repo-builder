FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:2df37ddf8df856a452dd63365b1acb345b6a562d74544e92b1471f5d8d2d15eb

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
