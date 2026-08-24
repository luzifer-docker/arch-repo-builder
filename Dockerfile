FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:bea0864db444265c0d41b6995473fe6c90ef44939e218fc5e835cf7d6598bffd

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
