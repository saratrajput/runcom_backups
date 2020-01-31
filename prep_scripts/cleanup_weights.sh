#!/bin/bash
dir=$1

cd ~/cr-dope/src/training/train_$dir/

for i in {1..9}
do sudo rm net_epoch_$i.pth
done

for i in {1..11}
    do for j in {1..9}
        do sudo rm net_epoch_$i$j.pth
    done
done
