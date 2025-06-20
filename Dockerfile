FROM luzifer/archlinux:latest@sha256:e44bb30e799a3b668ae9debfaed261310c45c0e6b5628866e1dd24b715723674

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
