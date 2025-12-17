FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:128427f03a350467e98ff6feea01f9e5eef8620a7112728bcc75a34f5bfdd855

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
