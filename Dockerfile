FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:d46ec0483aad6e0387f249f01787a44f4b8c58e6deca645c59620e51489ce6c3

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
