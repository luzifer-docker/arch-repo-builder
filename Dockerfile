FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:5c2cd8313dda4e5fce5ebfa387837246a48c3fcc8958d521fcefd187ff0def0a

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
