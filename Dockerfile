FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:049ea2953b2dc8213fef90da3e28f77f9e0b2bd4bcd21557304bcb8b4064aacb

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
