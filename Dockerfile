FROM luzifer/archlinux:latest@sha256:4fdd56d5f338d66b6a72951723afd3da8e0ce0ea44e0190344d90a97d0620989

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
