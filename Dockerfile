FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:6914f9bfe2d8e3a5426f3f394e96195ca7004b2365530336be3ce1c9accce980

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
