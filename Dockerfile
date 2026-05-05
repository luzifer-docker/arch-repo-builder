FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b4cea95b30de95b6c0bd4dfd71df1144e53c75967db5ace702f69beeab9696dd

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
