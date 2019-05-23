#!/bin/bash
# Script to download large files from Google Drive

DOCUMENT_ID=$1
FINAL_DOWNLOADED_FILENAME=$2

curl -c /tmp/cookies "https://drive.google.com/uc?export=download&id=$DOCUMENT_ID" > /tmp/intermezzo.html

curl -L -b /tmp/cookies "https://drive.google.com$(cat /tmp/intermezzo.html | grep -Po 'uc-download-link" [^>]* href="\K[^"]*' | sed 's/\&amp;/\&/g')" > ~/Downloads/$FINAL_DOWNLOADED_FILENAME
