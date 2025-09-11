FROM luzifer/archlinux:latest@sha256:b77a7a3e1bbbab0ca4085cd4f42896035a5dced316b94b3d7a5909a365713330

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
