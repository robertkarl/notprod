#! /usr/bin/env bash
set -e
FNAME="/usr/local/man/man1/payment_processor.1.gz"

echo man pages should have a name
RES=$( grep '.SH NAME' $FNAME )
if [[ -z "${RES}" ]]; then
	exit 1
fi

echo man pages should have a description
RES=$( grep '.SH DESCRIPTION' $FNAME )
if [[ -z "${RES}" ]]; then
	exit 1
fi

echo man pages should have trivia sections
RES=$( grep '.SH TRIVIA' $FNAME )
if [[ -z "${RES}" ]]; then
	exit 1
fi

echo "Do not get complacent."
sleep  1
echo .
sleep  1
echo .
sleep  1
echo .
echo entering man page now.
man payment_processor

sleep  1
echo .


echo "Compliance achieved. Management appreciates your hard work."
echo "notprod:8bd54a261f30c5d2f2cca2cb2345cea179ca12f7"
