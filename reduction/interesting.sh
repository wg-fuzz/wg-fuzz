#!/bin/bash

node test.js &> log.txt

grep -q "Command c" log.txt
