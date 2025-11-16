FROM luzifer/archlinux:latest@sha256:5a5d17f1c0c3621c7984b3066474d16fa0f7ca7703332a53ebd3b788d8cd1698

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
