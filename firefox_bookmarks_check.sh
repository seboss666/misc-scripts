#!/bin/bash
#Tool to scan exported Firefox bookmarks in order to check dead links
#Seboss666, GPLv3

if [ ! -f bookmarks.html ]; then
	echo -ne "Run this script in the same folder as your bookmarks.html file.\n"
	exit 1
fi

urls="$(cat bookmarks.html |grep HREF |cut -d\" -f2)"
rm /tmp/*.list
 
for url in $urls;do
	result=$(curl --connect-timeout 20 -I -s -o /dev/null -w "%{http_code}" "$url")
	echo -ne "$url \n" >> /tmp/${result}.list
done
 
echo -ne "Results in the following files : \n"
ls -l /tmp/*.list
