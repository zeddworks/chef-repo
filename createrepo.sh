#!/bin/bash

rake databag:upload_all
knife cookbook upload -a

for i in `ls roles/*.json`
do
  knife role from file $i
done
