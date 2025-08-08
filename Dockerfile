FROM luzifer/archlinux:latest@sha256:013c11f54a513195b773ab5ab1e96b0f573164781466661a1c014aba5020ed4f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
