#!/bin/biash

if [ -z $1 ] ; then
    echo "Usage: $0 <command> [first node] [last node]"
    echo "Use quotes if command has spaces."
    exit;
fi

if [ -z $2 ] ; then
    min=1
else
    min=$2
fi

if [ -z $3 ] ; then
    max=10
else
    max=$3
fi

for i in `seq -w $min $max` ; do
    echo -n "pie$i: "
    ssh -tx root@pie$i $1
done

echo "";
