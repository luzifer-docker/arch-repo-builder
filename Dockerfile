FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:131e8d72145c8f9e4ed3b87e5e8129d99512d6ffd9458f4bc6dd4c6364341be2

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
