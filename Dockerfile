FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:8514f59294558db34a720307c71f8574fa862b5e97ce064167342f534ddd9e08

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
