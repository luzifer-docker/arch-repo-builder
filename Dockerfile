FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:5651ac900f122894f809826fc513801fd435b17d45889492ec4bab377a568932

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
