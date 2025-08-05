FROM luzifer/archlinux:latest@sha256:a7f1b0ef29cd39a726144352aa09c69a29d9de78fc8f7d478f0ef2b994163a4b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
