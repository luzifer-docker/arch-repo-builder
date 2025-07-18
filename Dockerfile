FROM luzifer/archlinux:latest@sha256:c7b8a93f8d3a2982679c848d17b3cc0a1544a4e9325588938afcb0f67e91eb2e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
