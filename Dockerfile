FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:c4bde5390e79f728ba7c25570a2eb5a054c7297789446aaec3735df13b8c7171

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
