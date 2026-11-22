FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:ac8129f01a6f8c7e8ff4f3e27a957cef5b4bda807a064db22ab765a14603273f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
