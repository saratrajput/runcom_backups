#!/bin/bash
# Find a file with extension in sub-directories

file=$1
find . -name "*.$file" -type f $2
