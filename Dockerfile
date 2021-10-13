# syntax = docker/dockerfile:1.2

RUN --mount=type=secret,id=_env,dst=/etc/secrets/.env cat /etc/secrets/.env

FROM redis:6-alpine

COPY redis.conf .

ENTRYPOINT ["redis-server", "./redis.conf"]
