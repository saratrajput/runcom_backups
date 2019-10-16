#!/bin/bash
name=$1
id=$2

cat base.fish > $name.fish
cat remote-base.fish > remote-$name.fish

sed -i 's/base/'"$name"'/g' $name.fish
sed -i 's/base/'"$name"'/g' remote-$name.fish

sed -i 's/104.199.147.94/'"$id"'/g' $name.fish
sed -i 's/104.199.147.94/'"$id"'/g' remote-$name.fish

sed -i '2s/remote/'"$name"'/g' remote-$name.fish

# for .bash_aliases
printf "\n#ssh to "$name"
alias $name='ssh suraj@"$id"'
alias remote-$name='sshfs suraj@"$id":/ "$name"; cd "$name"'" >> ~/.bash_aliases
