FROM luzifer/archlinux:latest@sha256:992bc9b72616be3be0f9063e4381e37223db46817af8f9b499ff038ffbe26bbe

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
