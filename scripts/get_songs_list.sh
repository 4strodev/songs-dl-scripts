#!/usr/bin/env sh

scp astro@pi:/home/astro/storage/songs.txt songs-remote.txt

cat songs-remote.txt >> songs.txt

rm songs-remote.txt

./scripts/remove_duplicated.py

rm songs.txt

mv clean_songs.txt songs.txt
