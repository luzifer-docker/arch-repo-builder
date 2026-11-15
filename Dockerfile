FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:864bd827b01b7674edbe0334be20d81ece73cf72677277cc292c44c10c826520

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
