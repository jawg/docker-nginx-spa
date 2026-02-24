#!/bin/sh
# vim:sw=4:ts=4:et

set -e

ME=$(basename "$0")
DEFAULT_CONF_FILE="/etc/nginx/conf.d/default.conf"

if [ -f "$DEFAULT_CONF_FILE" ]; then
  if [ "$NGINX_SERVER_MODE" = "spa" ]; then
    echo "$ME: Configuring spa mode"
    sed -i 's/#:spa://g' $DEFAULT_CONF_FILE
  elif [ "$NGINX_SERVER_MODE" = "default" ]; then
    echo "$ME: Configuring default mode"
    sed -i 's/#:default://g' $DEFAULT_CONF_FILE
  else
    echo "$ME: Unknown mode $NGINX_SERVER_MODE" >&2
    exit 1
  fi
fi