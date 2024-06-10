#!/bin/bash

node test.js &> log.txt

grep -q "UNREACHABLE" log.txt
