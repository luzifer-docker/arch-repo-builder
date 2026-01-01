FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:d9f0b06e8df85b9b1016af08a7298e1df8d595f30d365bcfe1211ccdb53bec4b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
