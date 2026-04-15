FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:3e4899ebae2d60c5b0326a4408d911c3c127ee6172f0fbf6e028f776a2d7200c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
