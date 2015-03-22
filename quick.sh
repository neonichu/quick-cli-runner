#!/bin/sh

if [ -z "$1" ]
then
	files=`ls code/*.swift`
else
	files=$@
fi

F="`dirname $0`/vendor/Rome"

xctester -F$F -Xlinker -rpath -Xlinker $F $files
