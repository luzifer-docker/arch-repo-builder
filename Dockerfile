FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:00e70c4e4e25cccb1d695054a4335444482ffa27a8144871869e174623ab7381

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
