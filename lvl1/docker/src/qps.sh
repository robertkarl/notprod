#! /usr/bin/env sh
start=$(date +%s)

COUNT=10
for i in $(seq 2); do 
  curl localhost:5000/process_payment
done

QPS=1234
echo QPS is  ${QPS}
end=$(date +%s)

DIFF=$(( $end - $start ))
QPS=$(expr $DIFF / $COUNT )
echo ${QPS}
