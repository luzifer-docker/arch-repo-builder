FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:013939ba31ef2f1b42bb78e9504b1be71bd7a0795b5034b635ca02e8dff7c3a9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
