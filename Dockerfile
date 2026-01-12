FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:d4b9a0e71a78d1cd982d29b811dd9ebc6a97e92bf9875158747e04ca76715a12

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
