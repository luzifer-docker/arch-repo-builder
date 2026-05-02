FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:0378587aca6e014f152c2a84ea03291402839a858f262f03b3b00b400db01f64

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
