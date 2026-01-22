FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:02b72aec85dfb774ebeab4a5e212908ec06fb243ecaa68764d234f4abbca4a2f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
