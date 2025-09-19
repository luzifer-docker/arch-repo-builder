FROM luzifer/archlinux:latest@sha256:d24551ab6bc0fdcb61b5ea8218a2eb959424acead7b6bc2b79fa6f1a9393fec1

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
