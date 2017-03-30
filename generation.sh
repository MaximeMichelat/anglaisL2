#!/bin/sh

if [ $# -ne 1 ]; then
	echo "usage : ./$0 <file>"
	exit 1
fi

if ! [ -f $1 ]; then
	echo "First argument must be a file"
	exit 2
fi

pdf=`echo $1 | sed 's/md/pdf/'`

pandoc $1 -o $pdf -N -S --toc
