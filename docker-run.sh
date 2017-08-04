#!/usr/bin/env sh
docker run \
  --network mongo-net \
  -e "NODE_ENV=production" \
  -m "300M" --memory-swap "1G" \
  --name "web-proxy" \
  --init \
  -p 80:80 \
  -d \
  sonkal/web-proxy

# docker run \
#  --network mongo-net \
#  -e "NODE_ENV=production" \
#ToDo: which user to use for nginx?
#  -u "node" \
#ToDo: memory?
#  -m "300M" --memory-swap "1G" \
#ToDo: work dir?
#  -w "/home/node/app" \
#  --name "application-service" \
#  --init \
#ToDo: this will clash with PHP ;-(
#  -p 80:80 \
#  -d \
#  sonkal/application-service \
#  node dist/index.js
