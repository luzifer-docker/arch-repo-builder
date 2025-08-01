FROM luzifer/archlinux:latest@sha256:0e816a58178a5c930149cb15bdfea490ed250922350d62ff4cc127e56ef81ab1

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
