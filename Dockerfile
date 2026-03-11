FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:88319c0cf36027c1a643a69cf42c84c271be49fc4e4c24cc8e8883702bfe68df

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
