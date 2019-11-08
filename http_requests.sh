#!/bin/bash

while true
do
  curl http://localhost:5000/static/test.txt
  curl http://localhost:5000/static/test.txt
  for x in {1..5}
    do
      curl http://localhost:5000/json
    done
  curl http://localhost:5000/abort/500
  for y in {1..10}
    do
      curl http://localhost:5000/bp/
    done
  sleep 60
done
