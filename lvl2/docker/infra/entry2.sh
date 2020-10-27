#! /usr/bin/env sh
nginx 2>/dev/null &
PYTHONPATH=/private/lvl2 uwsgi --ini /root/lvl2.ini  2>/dev/null &

echo "\n\n\n\n\n\n\n\n\nSuzy, welcome to your Tranq, Inc. development instance.\n\n\n\n\n\n\n\n\n"
bash
