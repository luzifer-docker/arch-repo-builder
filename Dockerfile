FROM luzifer/archlinux:latest@sha256:e05c778e8990defbc33289ff26e73291dad4f07072ff2124ab079d29e0f61c13

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
