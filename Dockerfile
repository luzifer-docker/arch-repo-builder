FROM luzifer/archlinux:latest@sha256:6dd489d1c4abbcabe8f9f138996c12be94cf762ad351998e0496ef8df1bef1b7

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
