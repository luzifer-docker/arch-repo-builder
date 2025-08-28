FROM luzifer/archlinux:latest@sha256:893aa2135759d1e856ee6fd14c778fc6d486657af12497366df67546c72c3a8e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
