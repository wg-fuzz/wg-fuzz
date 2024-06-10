#!/bin/bash

node test.js &> log.txt

grep -q "Command cannot" log.txt
