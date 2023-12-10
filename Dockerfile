FROM debian:buster-20231120-slim

ENV EMAIL=email
ENV PASSWORD=password

# To work with a container

RUN echo path-include /usr/share/doc/megacmd/* > /etc/dpkg/dpkg.cfg.d/docker

COPY files/megacmd_1.6.3.4_amd64.deb /tmp/megacmd.deb

RUN apt-get update && \
    apt-get install -y curl && \
    apt install -y ./tmp/megacmd.deb && \
    rm -rf /var/lib/apt/lists/*

COPY scripts/ /opt/scripts
COPY entrypoint.sh .

RUN chmod +x entrypoint.sh && \
    chmod +x -R /opt/scripts/

ENTRYPOINT [ "./entrypoint.sh" ]
