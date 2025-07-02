FROM luzifer/archlinux:latest@sha256:da56d7a81f83528fe8e86cd33b631ae6fdcb3bf3056e97f32144a226e64617ed

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
