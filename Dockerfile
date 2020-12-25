FROM debian:buster-20201209-slim

# To work with a container

ENV EMAIL=email
ENV PASSWORD=password

RUN echo path-include /usr/share/doc/megacmd/* > /etc/dpkg/dpkg.cfg.d/docker

COPY files/mega*.deb /tmp/megacmd.deb

RUN apt-get update && \
    apt-get install -y curl && \
    apt install -y ./tmp/megacmd.deb && \
    rm -rf /var/lib/apt/lists/*

COPY scripts/ /opt/scripts
COPY entrypoint.sh .

RUN chmod +x entrypoint.sh && \
    chmod +x -R /opt/scripts/

ENTRYPOINT [ "./entrypoint.sh" ]