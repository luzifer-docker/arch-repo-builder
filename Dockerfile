FROM luzifer/archlinux:latest@sha256:c85bf16e43fdd79a79e8f38fa8b1afd75c78b159d7b404735b4ddb7ca3c9d766

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
