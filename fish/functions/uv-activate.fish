function uv-activate --description 'Activate a uv venv from ~/.uv/envs'
    if test (count $argv) -lt 1
        echo "usage: uvactivate <env-name>"
        return 1
    end

    set envdir "$HOME/.uv/envs/$argv[1]"
    set act "$envdir/bin/activate.fish"

    if test -f "$act"
        source "$act"
    else
        echo "No fish activation script at: $act"
        echo "Did you create the env at ~/.uv/envs/<name>? Try:"
        echo "  uv venv ~/.uv/envs/$argv[1]"
        return 1
    end
end

