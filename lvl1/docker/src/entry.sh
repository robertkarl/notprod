#! /usr/bin/env sh
nginx&
PYTHONPATH=lvl1 uwsgi --ini /etc/lvl1.ini 2>&1 1>/dev/null &

echo "\n\n\nuzy, welcome to your Snoog, Inc. development instance.\n\n\n"
bash
