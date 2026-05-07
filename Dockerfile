FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b1dbee36c0feb77381272a6d5a533146ead8e936143b9e75d779addb862cd712

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
