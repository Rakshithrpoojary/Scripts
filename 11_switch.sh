#!/bin/bash
read choice
case $choice in
	a)date;;
	b)ls;;
	c)pwd;;
	*) echo "Pleae provide valid input"
		esac

