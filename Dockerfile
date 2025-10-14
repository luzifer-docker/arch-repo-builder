FROM luzifer/archlinux:latest@sha256:4c7794736c0091f22cd7a96ef0ac6e7855fb27197706f306edbcf6955e89f9ef

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
