#!/bin/bash

node test.js

if [ $? -ne 0 ]
then 
	exit 0
else 
	exit 1 
fi
