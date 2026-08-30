FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:c65515ed47f4d33586f7b15fab444500e0ed2cac22c3e32f2a208a1f845049ca

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
