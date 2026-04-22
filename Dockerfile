FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:481164c92217a1fd298ee5672c74ed7bbabff47ed0961b7e1103bdd7fb2a1a87

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
