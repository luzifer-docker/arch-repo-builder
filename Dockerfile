FROM luzifer/archlinux:latest@sha256:0ca3b4bf56c19d1c5222269e0a8e889b44f038e6669190b59c022e20e549ec2a

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
