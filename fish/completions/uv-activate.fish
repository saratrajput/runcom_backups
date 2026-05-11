# Autocomplete uvactivate with envs from ~/.uv/envs
complete -c uv-activate -f -a '(for d in $HOME/.uv/envs/*/; test -d $d; and basename $d; end)'

