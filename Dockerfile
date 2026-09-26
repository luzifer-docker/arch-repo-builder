FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:563617e10fb98a00e32626948155c39534dc35efc2a8bd214856da4291ed665d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
