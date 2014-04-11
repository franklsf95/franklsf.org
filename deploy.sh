#!/bin/sh
echo 'Building site...'
jekyll build
echo 'Syncing with server...'
rsync -v -a _site/ me:~/www/franklsf.org

if [ -n "$1" ]
    then
        echo 'Git commiting...'
        git commit -m "$1"
        echo 'Git pushing...'
        git push origin master
fi
