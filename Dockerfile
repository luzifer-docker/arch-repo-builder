FROM luzifer/archlinux:latest@sha256:2c84fe22131cb5f5a9d320761d4dae021555bff73c076efc2d4117f41088dcb9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
