#!/usr/bin/env python

patterns = {}
file = open("songs.txt")
clean_file = open("clean_songs.txt", 'w')

for line in file:
    line = line.strip()
    patterns[line] = True

sorted_patterns = sorted(list(patterns.keys()))

clean_file.write('\n'.join(sorted_patterns))

file.close()
clean_file.close()
