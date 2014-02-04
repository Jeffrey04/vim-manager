#!/usr/bin/env sh
./generate-make.php ./config.json | unexpand -t4 > Makefile
