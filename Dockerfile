FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:26714b1d8858d5c9f43a349575a97609a718486f4562f26b643730a34ccf1f0d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
