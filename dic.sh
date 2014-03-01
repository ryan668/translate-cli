#!/usr/bin/env zsh

result=$(curl 'http://openapi.baidu.com/public/2.0/bmt/translate?client_id=IGRde9G9hsF3y6zr4aVPvMxq&from=en&to=zh&q='+$1 --silent | JSON -l | awk -F "\t" '/\["trans_result",0,"dst"]/ {print $2 }')

echo -e $result | tr -d '"'
