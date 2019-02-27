#!/bin/bash

for i in $(seq 1 60); do
  echo error | nc minikube 80 > /dev/null
  sleep 0.5
done
