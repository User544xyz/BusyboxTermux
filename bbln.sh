#!/bin/bash
# script to link all busybox executables in termux
cd $PATH
apt-get install busybox
busybox cp tar tar2 # backup important files
busybox cp grep grep2
for i in $(busybox --list) # symlinking all bb executables
do
	busybox rm $i
        busybox ln -s busybox $PATH/$i
done
busybox cp tar2 tar
busybox cp grep2 grep
