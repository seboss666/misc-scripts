#!/bin/bash
#little snippet to convert raw .wav files into FLAC 24bit lossless files
#Author: Seboss666
#Website : https://blog.seboss666.info
#Licence : WTFPL

for FILE in *.wav;
do
    ffmpeg -i "$FILE" -map_metadata 0 -af aformat=s32:44100 "${FILE%.*}.flac";
done 
