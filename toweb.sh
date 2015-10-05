#!/bin/bash
pngs=($(ls "$1/*.png"))
for i in `ls $1/*.png`
do
  cwebp $i -o "$i.webp"
done

#function join { local IFS="$1"; shift; echo "$*"; }
function join { perl -e '$s = shift @ARGV; print join($s, @ARGV);' "$@"; }

webp=($(ls $1/*.png.webp))

command=`join " +100+0+0+1-b -frame " "${webp[@]}"`
full_command="libwebp/bin/webpmux -frame $command +100+0+0+1-b -loop 10 -bgcolor 255,255,255,255 -o $1.webp"
echo $full_command
$full_command
#libwebp/bin/webpmux -frame 00000.png.webp +100 -frame 00001.png.webp +100 -frame 00003.png.webp +100 -loop 10 -bgcolor 255,255,255,255 -o animated_container.webp



#libwebp/bin/webpmux -frame 00000.png +100 -frame 00001.png +100 -frame 00002.png +100 -frame 00003.png +100 -frame 00004.png +100 -frame 00005.png +100 -frame 00006.png +100 -frame 00007.png +100 -frame 00008.png +100 -frame 00009.png +100 -frame 00010.png +100 -frame 00011.png +100 -frame 00012.png +100 -frame 00013.png +100 -frame 00014.png +100 -frame 00015.png +100 -frame 00016.png +100 -frame 00017.png +100 -frame 00018.png +100 -frame 00019.png +100 -frame 00020.png +100 -frame 00021.png +100 -frame 00022.png +100 -frame 00023.png +100 -frame 00024.png +100 -frame 00025.png +100 -frame 00026.png +100 -frame 00027.png +100 -frame 00028.png +100 -frame 00029.png +100 -frame 00030.png +100 -frame 00031.png +100 -frame 00032.png +100 -frame 00033.png +100 -frame 00034.png +100 -frame 00035.png +100 -frame 00036.png +100 -frame 00037.png +100 -frame 00038.png +100 -frame 00039.png +100 -frame 00040.png +100 -frame 00041.png +100 -frame 00042.png +100 -frame 00043.png +100 -frame 00044.png +100 -loop 10 -bgcolor 255,255,255,255 -o animated_container.webp

#libwebp/bin/webpmux -frame 00000.png +100 -frame 00001.png +100 -frame 00002.png +100 -frame 00003.png +100 -frame 00004.png +100 -frame 00005.png +100 -frame 00006.png +100 -frame 00007.png +100 -frame 00008.png +100 -loop 10 -bgcolor 255,255,255,255 -o animated_container.webp
