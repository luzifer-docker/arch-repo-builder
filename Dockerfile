FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:03198121a6172a1a9d8994a897e91637b2fab29dd9ca70531eb1b62a7eeda6d4

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
