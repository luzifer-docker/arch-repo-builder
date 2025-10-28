FROM luzifer/archlinux:latest@sha256:14175b6f428ecc05ff0604078515a3dab2cfa13c28b37ec6b157534889bef51c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
