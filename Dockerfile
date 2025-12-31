FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:bda41e05e21525f8739dfc29e8d0a1f09ae95b7fbaf3341f47855c91659be976

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
