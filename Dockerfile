FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:53a7bbc23b852cdbf456a8dd506c0b24b913ca6672a7fa94a4275ec8b456e76a

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
