#!/bin/sh
file=$1
path=$2

while read -r line; do
  youtube-dl "$line" -o "$path/%(title)s.%(ext)s" -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'
done < "$file"