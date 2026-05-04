FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:a8011ee4f5767d95969a3da5de9e78bc39d13ddc1fc51f14a8369becfe301333

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
