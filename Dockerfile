FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b632855dc40ff445b98c2c3aed64294a83cc929d447cbca880daf81f50cc15a9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
