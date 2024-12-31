#!/usr/bin/env sh
rsync -av --progress songs/** "/run/media/astro/Tera/Songs" && rm -rf songs
