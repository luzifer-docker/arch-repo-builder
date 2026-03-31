FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:4b74e2f01b59526b649cf0327d80bda378794d1a5af062c7c1ff9e113afbf71e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
