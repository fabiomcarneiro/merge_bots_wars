#!/bin/sh


fn() {
local x=2
while [ $x -le 20 ]
do
  git checkout -b pessego/$x && \
  echo $x > pessego$x && \
  git add -A . && \
  git commit -m another && \
  git push origin pessego/$x && \
  git checkout master
  (( x++ ))
done
}

fn
