# syntax = docker/dockerfile:1.2

FROM redis:6-alpine
RUN --mount=type=secret,id=_env,dst=/etc/secrets/.env cat /etc/secrets/.env

COPY redis.conf .

ENTRYPOINT ["redis-server", "./redis.conf"]
