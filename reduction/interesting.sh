#!/bin/bash

node test.js &> log.txt

grep -q "Cannot find" log.txt


