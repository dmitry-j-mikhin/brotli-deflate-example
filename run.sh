#!/bin/sh

set -ex

[ -f ~/.tokens ] && source ~/.tokens

IMG=wmx-public.gitlab.yandexcloud.net:5050/wmx-public/container-images/node:4.6
docker run \
 -it --rm \
 -e WALLARM_API_HOST=api.wallarm.ru \
 -e WALLARM_API_TOKEN=$NODE_TOKEN \
 -v `realpath ./default`:/etc/nginx/sites-enabled/default \
 -v `realpath content`:/content \
 -p 80:80 \
 $IMG
