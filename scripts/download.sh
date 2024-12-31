#!/usr/bin/env sh

download_dir="./songs"

yt-dlp -o "$download_dir/%(title)s.%(ext)s" \
    --add-metadata --embed-thumbnail --embed-metadata --format bestaudio \
    --extract-audio --audio-format mp3 --audio-quality 0 \
    --batch-file songs.txt --download-archive downloaded.txt
