FROM luzifer/archlinux:latest@sha256:d260758202b8c1e3dcdef72ab6c3a758798a3b9ebfa026a9b1b24a27b191aebb

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
