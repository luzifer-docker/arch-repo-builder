FROM luzifer/archlinux:latest@sha256:b89113b8d3079994213034c4faf3b6ddc0fbb7134d627ea4ac09ce6ab46ae928

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
