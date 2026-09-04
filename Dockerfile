FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:f129201c7f5c2dec414daacd19f7086d295eeaac15073c9f80db85c35b0aa3bf

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
