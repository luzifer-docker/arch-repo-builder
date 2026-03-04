FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:a8000ca2fbdebbdc6618bac63ffd0a2fd7c85ad8acbdf6bf20150e151f6d926a

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
