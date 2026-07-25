FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:c6b20b90ab505dfde2b8d1f83c895a2fc9e9b6c96292d652895c642a8ecc9079

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
