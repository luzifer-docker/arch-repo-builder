FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:ce93f4c420669b865066a7c395a04843990452d272c1c11e8a289f352c3e47b4

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
