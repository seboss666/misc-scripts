#!/bin/bash

for FILE in *.wav;
do
    ffmpeg -i "$FILE" -map_metadata 0 -af aformat=s32:44100 "${FILE%.*}.flac";
done 
