FROM luzifer/archlinux:latest@sha256:6a920c4bb0db08c4e38ddb9cea7feb85b60e9557bff221234df233721d6f88af

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
