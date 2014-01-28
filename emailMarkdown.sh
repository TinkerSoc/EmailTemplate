#!/bin/bash

markdown=`pandoc $1 --to=plain`
html=`pandoc $1 --html --email-obfuscation=none`


while read line; do 
  if [[ "$line" == "{{markdown}}" ]]; then
     echo "$markdown"
  elif [[ "$line" == "{{html}}" ]]; then
     echo "$html"
  else
     echo "$line"
  fi
done < $2
