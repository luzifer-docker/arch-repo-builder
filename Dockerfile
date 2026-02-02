FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:3e358f9ed5146927a9a6b418930aa54338dffd54913ba734aae5a02cade5209c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
