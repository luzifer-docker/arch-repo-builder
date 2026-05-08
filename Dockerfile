FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:2ac135895e368c3cfed42d43b716b81b071dd370df790d7bbc728dc673dbc856

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
