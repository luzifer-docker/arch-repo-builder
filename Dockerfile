FROM luzifer/archlinux:latest@sha256:1ae01c4362b91787e4afe72a26d7c74b61d7722c8babd733e6322b3a0124e62e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
