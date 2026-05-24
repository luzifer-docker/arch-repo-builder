FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:14b450a6188d32082c57433399b7427dec58ea0ff1bcc22ab48c553ba7553466

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
