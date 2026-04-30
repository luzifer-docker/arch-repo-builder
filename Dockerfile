FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:d57b9563f096906d8ca0200cfd57978933ed14e279cd332ba526eeac6446dbc1

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
