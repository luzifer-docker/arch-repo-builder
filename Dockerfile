FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:bc195ff83e783231c3139786b784a506fc9b7d388a05d2e1e80e2ac527e776f0

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
