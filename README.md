# action-caddy-builder

This is a simple Github action for building [caddy](https://github.com/caddyserver/caddy) with some plugins I needed.

You can:

- Fork this repo and edit the `plugins` file and run actions to build your own caddy binary and docker image.
- Just download binary or pull docker image if you want (I have no any warranty of artifacts).

Visit [plugins](plugins) file to view what plugins be built in.

Docker image: `ghcr.io/dev-techmoe/action-caddy-builder:latest`

Tip:

- If you need build caddy for some platform that is not popular (such as armv7, i386) you can edit [workflow file](.github/workflows/caddy-build.yml) and uncomment platforms configuration you need and rerun workflows.
