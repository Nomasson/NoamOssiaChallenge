#!/bin/bash

while read line
do
	echo $line
	first="$(cut -d' ' -f1 <<<"$line")"
	second="$(cut -d' ' -f2 <<<"$line")"
	first="$(echo "$first" | tr '[:upper:]' '[:lower:]' | head -c 1)"	
	second="$(echo "$second" | tr '[:upper:]' '[:lower:]')"
	user="${first}${second}"
	echo $user
	sudo useradd "$user"
done<"/tmp/challenge/newusers"
