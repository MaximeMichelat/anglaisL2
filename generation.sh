if [ $# -ne 1 ]; then
	echo "Faut un argument, gros segpa"
fi

pdf=`echo $1 | sed 's/md/pdf/'`

pandoc $1 -o $pdf -N -S --toc
