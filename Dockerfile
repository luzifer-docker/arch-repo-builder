FROM luzifer/archlinux:latest@sha256:79469b9616b85648b199e79e4522a2f39aaf517af1a7cdb7220098db76208315

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
