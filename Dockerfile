FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:abea1b345aaddf97fc024f578fdabe2fc2b947da1f3238e9c18e0052ac40a3d3

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
