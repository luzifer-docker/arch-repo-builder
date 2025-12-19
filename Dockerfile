FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:57808f1a6328de8bccf84c8812ce832807a0344a31ea00303c223d3e163bcece

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
