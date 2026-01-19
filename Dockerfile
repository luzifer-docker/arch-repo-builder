FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:f54bb14066cd07c34f16eb6837118872efa2a8bc23293ee6138c493f37a7aa1b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
