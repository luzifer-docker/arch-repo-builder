FROM luzifer/archlinux:latest@sha256:9145fdef95a825c3182615404c550626c5807f4d897d74747d467ec6d494ac67

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
