#!/bin/bash

cleanup ()
{
kill -s SIGTERM $!
exit 0
}

trap cleanup SIGINT SIGTERM
echo $SPEED
while [ 1 ]
do
	echo "Loggggginnnnnggg !!!! $(date)"
	sleep $SPEED &
	wait $!
done
