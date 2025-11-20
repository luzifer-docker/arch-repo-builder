FROM luzifer/archlinux:latest@sha256:6edc53115fee2398feb0e3eb357ef3e800fc12bdeba7e06436468fc62e91a450

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
