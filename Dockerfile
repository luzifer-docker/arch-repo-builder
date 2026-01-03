FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:8556ee5444304cc6f17e222237d056857e26fe216f66efebbfb222d4bdcd87a2

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
