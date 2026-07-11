FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:d0d06b70d9973e78cbd98cdcddfd7eb0c4735d85064c7a7dda9785b9d5e4ad7d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
