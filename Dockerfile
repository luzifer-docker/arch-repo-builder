FROM luzifer/archlinux:latest@sha256:9d6fe935d660d909b69f848db6f8cc47a50dbd975cf1cd0547776103f5083ade

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
