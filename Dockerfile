FROM luzifer/archlinux:latest@sha256:5499d562e0c9aeced1c720b1b261dbc0e22f15df3f600c284a5d5c2ba0363dd5

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
