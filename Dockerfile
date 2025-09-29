FROM luzifer/archlinux:latest@sha256:f9e8cec1bc57ff2edebbed911cd5be84508a3d898a39d5706496d06e281aa249

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
