#!/bin/sh


fn() {
local x=1
while [ $x -le 1 ]
do
  git checkout -b joe/$x && \
  echo $x > joe$x && \
  git add -A . && \
  git commit -m another && \
  git push origin joe/$x && \
  git checkout master
  (( x++ ))
done
}

fn
