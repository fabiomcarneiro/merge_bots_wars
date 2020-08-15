#!/bin/sh


fn() {
local x=1
while [ $x -le 1 ]
do
  git checkout -b melon/$x && \
  echo $x > melon$x && \
  git add -A . && \
  git commit -m another && \
  git push origin melon/$x && \
  git checkout master
  (( x++ ))
done
}

fn
