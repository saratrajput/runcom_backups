#!/bin/bash
cd ~/cr-dope/src/training/

mkdir -p ndds_480p/{mixed,single}

cd ndds_480p/mixed/

for file in ~/ndds_data/mixed*
do sudo unzip $file -d .
done

cd ../single/

for file in ~/ndds_data/$1*
do sudo unzip $file -d .
done
