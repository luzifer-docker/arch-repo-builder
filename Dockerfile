FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:8b75d79fb5327b86fd6ddda003cb20b6a071881944a919b785256d43cd8ea7e2

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
