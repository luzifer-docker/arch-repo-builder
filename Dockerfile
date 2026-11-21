FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:ba26a54ed3e7b44128774e6c4df980895a4d5920862956c4b64cb22bba0a73d9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
