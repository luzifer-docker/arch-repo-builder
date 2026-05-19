FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:2ade00de2eb0a56fc221bc64a837cc026d507599db83e6d4132ef76b4ab7087a

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
