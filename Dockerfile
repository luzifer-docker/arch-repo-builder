FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:2b8f5ac17fd0f1cb6e44d2f7eecc85673b5345d7484d08c437b2155b8f787c44

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
