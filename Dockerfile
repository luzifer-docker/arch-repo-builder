FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:6f208912309e1c91baa60c669b27447afb2c65df757cf26b5609bcf4343cfa73

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
