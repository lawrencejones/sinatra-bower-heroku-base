#!/bin/bash
for file in $(grep -rnl . -e "<APP_NAME>");
do
  sed -i "s/<APP_NAME>/$1/g" $file
done

rm -rf $0 ./.git && git init
npm install
