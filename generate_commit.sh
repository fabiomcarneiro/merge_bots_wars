#!/bin/sh


fn() {
local x=2
while [ $x -le 20 ]
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
