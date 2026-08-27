FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:6afc217ee8b3b1c4996dd7624169bdd039bbcf3f515439fe7fbe18160a1acc5b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
