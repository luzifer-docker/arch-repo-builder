FROM luzifer/archlinux:latest@sha256:cfb6b0c1fcab01205d9346636771c362b96e503a575a5a4c03e20b7022c35777

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
