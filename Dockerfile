FROM luzifer/archlinux:latest@sha256:5ce1aa4cabb6b6c9284a3c50b7360debc83d2e09625a55b1fca11d509778126b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
