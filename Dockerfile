FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:f3db09522069580cd0cfc4f3c734a344f8a58a898733cfb94db50c141f129868

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
