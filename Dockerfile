FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:a318f031298bae5eec1c4dae19ef4d580983d4646587571518338c13547c226b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
