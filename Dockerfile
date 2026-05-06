FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:479e83e2af4c7eb52e9be4679d28954d06852d26db26e6e12364543637b0f0d9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
