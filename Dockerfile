FROM luzifer/archlinux:latest@sha256:69f6ffbf8e79c05c9466a16d6d0693f6ad6da1071412ad6e35b0ba0c7d377473

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
