FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:3d89d5228babb7ada65bd7f0ba083375c01d4a0e5717d7ffc9141267f06482d7

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
