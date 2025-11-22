FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:03ce0c18541c7d42b17659329f0897d05e5db4fed7c1ac88869c4da150e194d5

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
