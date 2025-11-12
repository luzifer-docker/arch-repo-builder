FROM luzifer/archlinux:latest@sha256:866bd77d92c56d509526165d6a021e3d488c90a3cc4f4049f9f92a62f84f9298

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
