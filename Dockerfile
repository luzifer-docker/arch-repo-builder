FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:60c203c36ede09dccefba482c73e143c4b1e1552f2034c2c66bd0a633f9820af

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
