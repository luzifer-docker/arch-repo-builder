FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b5eb59009d90613ce5fd8526459f9cc9922a68420ac882896491f395820eabcc

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
