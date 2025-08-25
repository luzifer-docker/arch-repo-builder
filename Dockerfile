FROM luzifer/archlinux:latest@sha256:14e1d387fa36a59a1eec4f9066d461f1578e5703b7c7ea1d4f9d60628fe7db81

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
