#!/bin/bash
#Script to convert NRG disk image (Nero) to standard ISO image
#Either by using nrg2iso or dd
#Author: Seboss666
#Website : https://blog.seboss666.info
#Licence : WTFPL

usage() {
	echo -ne "Usage :\n"
	echo -ne "$0 <input_image.nrg> <output_image.iso>\n"
}

if [ $# -ne 2 ] then
	usage
	exit 1
fi

NRG2ISO=$(which nrg2iso)

INPUTFILE=$1
OUTPUTFILE=$2

if [ ! -f $INPUTEFILE ]; then
	echo -ne "Input file not found\n"
	usage
	exit 1
fi

if [ -f $OUPUTFILE ]; then
	echo -ne "Output file already exists.\n"
	usage
	exit 1
fi

if [ $NRG2ISO -ne "" ]; then
	nrg2iso $INPUTFILE $OUTPUTFILE
else
	dd if=$INPUTFILE of=$OUTPUTFILE bs=2048 skip=150
fi

