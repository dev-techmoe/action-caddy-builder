FROM caddy:builder as builder
ARG CADDY_PLUGINS
RUN xcaddy build ${CADDY_PLUGINS} -o /caddy

FROM caddy:alpine
COPY --from=builder /caddy /usr/bin/caddy