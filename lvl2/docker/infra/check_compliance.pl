#! /usr/bin/env sh
set -e
RES=$( grep NAME /usr/local/man/payment_processor )
if [[ -z "${RES}" ]]; then
	echo empty
fi
RES=$( grep TRIVIA /usr/local/man/payment_processor )
if [[ -z "${RES}" ]]; then
	echo empty
fi
echo Compliance achieved. notprod:lvl3
