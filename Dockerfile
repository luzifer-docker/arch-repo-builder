FROM luzifer/archlinux:latest@sha256:9b81e4648549524be5486410cf05abbd6153e7edf61ca087dd152d3dcab4c9f8

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
