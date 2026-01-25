FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:1d91d5e84fa694539b2b7ca5f188ab5832f7f1b6577a87986b22832c7910faa9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
