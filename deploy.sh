#!/bin/sh
echo 'Building site...'
jekyll build
echo 'Syncing with server...'
rsync -v -a _site/ me:~/www/franklsf.org
