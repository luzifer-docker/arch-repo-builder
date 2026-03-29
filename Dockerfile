FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:c2849dafb21f706ef25e7d3ced7bdecfc32b6442db8eb9283cc5e1894067894f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
