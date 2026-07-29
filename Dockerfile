FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:e1db5af3927e9c49883ac34ab7ef9b7bf4efede700bdf1fe2321a2ff7d7e0fd0

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
