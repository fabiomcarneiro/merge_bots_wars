#!/bin/sh


fn() {
local x=1
while [ $x -le 20 ]
do
  git checkout -b klaxy/$x && \
  echo $x > klaxy$x && \
  git add -A . && \
  git commit -m 'fix: another' && \
  git push origin klaxy/$x && \
  git checkout master
  (( x++ ))
done
}

fn
