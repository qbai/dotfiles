#!/bin/bash

set -u


cat file.txt | (while read line;do echo $line;done)
