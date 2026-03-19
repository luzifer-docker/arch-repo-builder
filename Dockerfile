FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:f804c5e8b348e5df54f38156e5c1a7e9d534238b43dde48d49e96935d046f75d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
