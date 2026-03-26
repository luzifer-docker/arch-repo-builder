FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:982e072f34c2f2a604cfb684788643fca3620222a1b45ad1d58cc1f7bc51fb9b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
