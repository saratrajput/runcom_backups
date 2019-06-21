#!/bin/bash
name=$1
id=$2

cat suraj-0.fish > $name.fish
cat remote-suraj-0.fish > remote-$name.fish

sed -i 's/suraj-0/'"$name"'/g' $name.fish
sed -i 's/suraj-0/'"$name"'/g' remote-$name.fish
sed -i 's/34.76.252.27/'"$id"'/g' $name.fish
sed -i 's/34.76.252.27/'"$id"'/g' remote-$name.fish
sed -i '2s/remote/'"$name"'/g' remote-$name.fish
