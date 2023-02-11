FROM caddy:builder as builder
ARG CADDY_PLUGINS
RUN echo "build with param: ${CADDY_PLUGINS}" \
      && xcaddy build ${CADDY_PLUGINS} --output /caddy

FROM caddy:alpine
COPY --from=builder /caddy /usr/bin/caddy
