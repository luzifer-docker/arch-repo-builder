FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:61ec54e16d06d69671fb77497bbf744d5de396a85a4ab0d4df2047c7739249dc

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
