#! /usr/bin/env sh
nginx&
PYTHONPATH=lvl1 uwsgi --ini lvl1.ini 2>&1 &

echo "Suzy, welcome to your Snoog, Inc. development instance."
bash
