FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:e9f761fa843b98ebcbe895bd1a71fef2fee74d936fb301150448f3048e1132fc

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
