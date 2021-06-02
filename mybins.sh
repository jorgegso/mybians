#!/bin/bash

file=$1
curl -s https://gtfobins.github.io/ | grep "/gtfobins/" | cut -f 2-3 -d "s" | awk -F '/' '{print $1 $2}'  | uniq > listgg.txt
sort $file listgg.txt | uniq --count --repeated
rm -r listgg.txt
