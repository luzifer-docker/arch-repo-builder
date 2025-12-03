FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:6c1f60dcbea9fbfddc91a8d6fdabc7b78787b21e6f242e7a01a5aa7c41b976e9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
