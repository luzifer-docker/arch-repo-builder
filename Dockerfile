FROM luzifer/archlinux:latest@sha256:cbd39cf0be0536038670aee9d68c1269d7c41b312e4fc0a643183237bcf344f3

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
