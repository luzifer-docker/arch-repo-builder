FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:604b7be73a9bc63273747e1949876aa3a4c0b91a508e5367b89608e6a948ce48

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
