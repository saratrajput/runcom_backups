#!/bin/bash
name=$1
id=$2

printf "\n#ssh to "$name"
alias $name='ssh suraj@"$id"'
alias remote-$name='sshfs suraj@"$id":/ "$name"; cd "$name"'" >> ~/.bash_aliases
