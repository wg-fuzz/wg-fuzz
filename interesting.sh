#!/bin/bash

node out/test.js &> log.txt

grep -q "UNREACHABLE" log.txt
