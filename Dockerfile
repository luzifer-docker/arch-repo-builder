FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:9233d9316f65ca8e093815bdec2e7c0e1ef8bec4bd7c04aa27c73fd6666d0568

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
