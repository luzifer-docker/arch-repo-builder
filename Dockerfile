FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:eee4e2f6550d9e370e17304acba3ee2eb48c286d0e21735d5d3a29415d806f85

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
