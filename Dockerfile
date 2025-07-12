FROM luzifer/archlinux:latest@sha256:4a89b6572bcca84fb2a4d7b7dbcfdd1d35124e358f3966677a979c59a6ccd3ee

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
