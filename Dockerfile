FROM luzifer/archlinux:latest@sha256:5e8d8994e582c395362497649cab705fd5c9ad4ff00c8d12129f93b6a0611954

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
