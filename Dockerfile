FROM docker.io/caddy:builder as builder
ARG CADDY_PLUGINS
RUN --mount=type=bind,source=~/.cache/go-build,target=~/.cache/go-build echo "build with param: ${CADDY_PLUGINS}" \
      && xcaddy build ${CADDY_PLUGINS} --output /caddy

FROM docker.io/caddy:alpine
COPY --from=builder /caddy /usr/bin/caddy
