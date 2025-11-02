FROM luzifer/archlinux:latest@sha256:68cacd2c625176a9863c2967a8485600e62211229eed91d2d004e4ba238746d4

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
