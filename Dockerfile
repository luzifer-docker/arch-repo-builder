FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:767757640ce5b86affbd2216618c8f216c6d1fe9593dfbce97997c5973d7131b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
