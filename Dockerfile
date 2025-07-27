FROM luzifer/archlinux:latest@sha256:d4ebd870a54153bae7dd05887094f67fb9e21014e2ae476644379f5657a0b5c4

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
