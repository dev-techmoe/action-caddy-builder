FROM caddy:alpine

COPY --from=builder caddy /usr/bin/caddy