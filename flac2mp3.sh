#!/bin/bash
#little snippet to convert FLAC files into 320kbps VBR MP3 files
#Author: Seboss666
#Website : https://blog.seboss666.info
#Licence : WTFPL

for FILE in *.flac;
do
    ffmpeg -i "$FILE" -ab 320k -map_metadata 0 "${FILE%.*}.mp3";
done 
