#!/usr/bin/env bash

# Don't worry this is an auto-commit script to commit each file!

for pics in ./*.png; do
    wallp="$(echo ${pics} | cut -d/ -f 2)"
    mv ${pics} walls/.
	 git add walls/${wallp} &&
	  git commit -m "Added ${wallp} "
==============================
    echo "Pushed ${wallp}"
===============================
done



