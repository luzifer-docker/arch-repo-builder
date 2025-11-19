FROM luzifer/archlinux:latest@sha256:5029736f2ff9e56e3f5321fbc484ebb024c42ccb4eaa2d6adbb9e3130b350ac1

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
