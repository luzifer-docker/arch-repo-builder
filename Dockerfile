FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:31672570702cad4f31d97edb9264cc0d8237cb02935bae684e2bb046772cb800

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
