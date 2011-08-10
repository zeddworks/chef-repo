#!/bin/bash

knife cookbook bulk delete .* -p -y

knife role bulk delete .* -y

knife node bulk delete .* -y

for i in `knife data bag list`
do
  knife data bag delete -y $i
done

for i in `knife client list | grep -v chef-validator | grep -v chef-webui | grep -v smcleod | grep -v jmiller | grep -v production`
do
  knife client delete $i -y
done

for i in `knife node list`
do
  knife node delete $i -y
done
