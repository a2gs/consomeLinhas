#!/bin/sh

cat $1 | while read LINHA
do

	if [ -z "$LINHA" ]; then
		continue
	fi

	c=`echo $LINHA | cut -c1`
	if [ "$c" = "#" ]; then
		echo "Comentario: $LINHA"
	else
		echo "Nao comentario: $LINHA"
	fi

done
