#!/bin/sh

echo "Making symlinks"

curr_dir=$(pwd)

function mv_to_bkp {
    if [ -a $1.bkp ]; then
        echo "There is a backup for $1, aborting."
        exit 1
    fi

    if [ -a $1 ]; then
        mv $1 $1.bkp
    fi
}

mv_to_bkp ~/.i3
mv_to_bkp ~/.i3status.conf

ln -s $curr_dir/.i3 ~/.i3
ln -s $curr_dir/.i3status.conf ~/.i3status.conf
