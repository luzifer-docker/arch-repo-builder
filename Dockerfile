FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:c412812b17f25f46720d3d3c8ec094bf6345966236cf950cfc1ec7ba5f4c460b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
