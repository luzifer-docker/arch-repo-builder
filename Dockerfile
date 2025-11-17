FROM luzifer/archlinux:latest@sha256:ba16642c89305d4c25753b8e0e9400e9da8a8c440ef2db1912b12ce356f13cc5

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
