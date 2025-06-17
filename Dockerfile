FROM luzifer/archlinux:latest@sha256:4537ebefcb28c629dfdf6492a09c02b4ee16960e044e2a89993f7fc8c36cd593

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
