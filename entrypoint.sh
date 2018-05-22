#! /bin/sh
set -e

echo '{"host":"'$HUE_HOST'","username":"'$HUE_USER'"}' >> /root/.hue.json

/usr/local/bin/hue -j $@
