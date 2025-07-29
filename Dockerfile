FROM luzifer/archlinux:latest@sha256:39ccf717b2390bea5a5da0bb6ecceb14a9cfe61d58e77777d0ed3ffbc2787ff8

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
