FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:28d2dbb82f599089594af8fe94d509677d5392404aabf3f187a4d624681fabd6

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
