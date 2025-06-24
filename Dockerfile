FROM luzifer/archlinux:latest@sha256:ff778716f91ddba07925f45226515a23b38f99dd1029c1a550bab1c7e7d445af

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
