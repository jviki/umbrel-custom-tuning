FROM debian:12-slim

RUN apt-get update && apt-get install -y fswatch
COPY backup.sh /backup.sh

ENV LND_DIR "/lnd"
ENV SYNCTHING_DIR "/syncthing"

ENTRYPOINT [ "/backup.sh" ]
