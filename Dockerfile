FROM debian:trixie-20260421-slim

ENV EMAIL=email
ENV PASSWORD=password

# To work with a container

RUN echo path-include /usr/share/doc/megacmd/* > /etc/dpkg/dpkg.cfg.d/docker

COPY files/megacmd_2.5.2-1.1_amd64.deb /tmp/megacmd.deb

RUN apt-get update && \
    apt-get install -y curl jq && \
    apt install -y ./tmp/megacmd.deb && \
    rm -rf /var/lib/apt/lists/*

COPY scripts/ /opt/scripts
COPY entrypoint.sh .

RUN chmod +x entrypoint.sh && \
    chmod +x -R /opt/scripts/

ENTRYPOINT [ "./entrypoint.sh" ]
