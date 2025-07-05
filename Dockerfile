FROM luzifer/archlinux:latest@sha256:f1282633511aeb236258820d9d8a0df41dd33ec5ea5dbe660c989a714032baa6

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
