function uv-list-envs --description 'List uv envs in ~/.uv/envs'
    if test -d "$HOME/.uv/envs"
        for d in $HOME/.uv/envs/*/
            basename $d | sed 's:/$::'
        end
    else
        echo "~/.uv/envs does not exist (create it with: mkdir -p ~/.uv/envs)"
        return 1
    end
end
