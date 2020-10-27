#! /usr/bin/env sh
nginx 2>/dev/null &
PYTHONPATH=/private/lvl1 uwsgi --ini /root/lvl1.ini  &

echo "\n\n\n\n\n\n\n\n\nSuzy, welcome to your Tranq, Inc. development instance.\n\n\n\n\n\n\n\n\n"
bash
