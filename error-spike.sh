#!/bin/bash

MAX=2400

for ((i=0; i<=MAX; i++)); do
  echo -ne $i / $MAX\\r
  echo error | nc minikube 80 > /dev/null
  sleep 0.125
done
