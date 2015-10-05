#!/bin/bash
pngs=($(ls "$1/*.png"))
for i in `ls $1/*.png`
do
  cwebp $i -o "$i.webp"
done

function join { perl -e '$s = shift @ARGV; print join($s, @ARGV);' "$@"; }

webp=($(ls $1/*.png.webp))

command=`join " +100+0+0+1-b -frame " "${webp[@]}"`
full_command="libwebp/bin/webpmux -frame $command +100+0+0+1-b -loop 10 -bgcolor 255,255,255,255 -o $1.webp"
$full_command
