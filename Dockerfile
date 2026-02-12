FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:e89dad0d8040b7247a60be1d416ce4b7468d9c1dec43e85a239235199bae0f1d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
