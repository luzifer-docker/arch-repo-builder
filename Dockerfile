FROM luzifer/archlinux:latest@sha256:d3a7fca59ee44e4ce896c5f62ff4785b5f62d473e802d64c1717b49065d630be

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
