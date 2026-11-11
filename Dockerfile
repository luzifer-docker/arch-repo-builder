FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:e70a59d65b751cb5a9eb4d48b71ceff7402fcc0fe640cd6c7779c2d8098a2533

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
