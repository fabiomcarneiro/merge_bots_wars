#!/bin/sh


fn() {
local x=1
while [ $x -le 20 ]
do
  git checkout -b alphabet/$x && \
  echo $x > alphabet$x && \
  git add -A . && \
  git commit -m another && \
  git push origin alphabet/$x && \
  git checkout master
  (( x++ ))
done
}

fn
