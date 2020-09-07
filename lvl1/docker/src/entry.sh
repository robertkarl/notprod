#! /usr/bin/env sh
nginx&
PYTHONPATH=lvl1 uwsgi --ini lvl1.ini 2>&1 &

echo "Hey, you. You're finally awake."
bash
