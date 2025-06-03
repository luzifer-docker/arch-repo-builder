FROM luzifer/archlinux:latest@sha256:315aa3b3cf9f1ac4f2eabd16d3cefe9915f159bdc049c0367d4bfb74e6b195d2

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
