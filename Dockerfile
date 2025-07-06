FROM luzifer/archlinux:latest@sha256:5134c25a649588f6e6ba70e4b406c0327c1610d4a365e215ce68769a614dc138

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
