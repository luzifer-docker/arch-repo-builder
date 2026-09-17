FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:9e8d3e1c3a6b637b1fb6e353a83b54fc82bc9245209bb7e6a90ee6782322da71

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
