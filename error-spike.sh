#!/bin/bash

MAX=2400
SLEEP=1

for ((i=0; i<=MAX; i++)); do
  echo -ne $i / $MAX\\r
  echo error | nc minikube 80 > /dev/null
  sleep $SLEEP
done
