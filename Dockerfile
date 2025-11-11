FROM luzifer/archlinux:latest@sha256:996d8890d3b0831117dabcb96da451401d74157e06fe0dbbcf5f1d8fc5bfe973

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
