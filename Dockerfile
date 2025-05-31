FROM luzifer/archlinux:latest@sha256:f3ad97f119b864a4c3805d32181edb285c44bae35c2f00733cf23f59c18e9a8b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
