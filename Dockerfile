FROM luzifer/archlinux:latest@sha256:bac9d7415975ee37ab79e6d5d41beca7502bd014eb461cd714ed4ef0805e5837

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
