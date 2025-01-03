# Dockerfile for psql
FROM ubuntu:noble

RUN apt update && apt install -y postgresql-client

ENTRYPOINT [ "/bin/bash" ]
