FROM luzifer/archlinux:latest@sha256:75edfbe9d33f8ccddb3e1b021ab2596402aea9fdf540bc686051cb01f10dd0c4

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
