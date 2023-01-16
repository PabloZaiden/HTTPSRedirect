#!/usr/bin/env sh

export ssl_preread_server_name="\$ssl_preread_server_name"
export targetBackend="\$targetBackend"
envsubst < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

/docker-entrypoint.sh nginx -g "daemon off;"