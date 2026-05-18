FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:f18ecd1ebf3f4d454edec07f01d1799d5067c74e433fe2a3f0cc63339b4abf0f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
