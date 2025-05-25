FROM luzifer/archlinux:latest@sha256:7c04f1d1ca9e3e03ada7ea3c4d776401d44fe5bc62a55fb378c99976126256e2

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
