FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:4f579da1a7200d9468cec55e5f0a403ec64da65aee041a2691a29ab1be27e04b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
