function camel_to_snake
    set rename_cmd "
        my (\$base, \$ext) = /^(.+?)(\\.\\w+)?\$/ ? (\$1, \$2 // '') : (\$_, '');
        \$base =~ s/([a-z0-9])([A-Z])/\${1}_\${2}/g;
        \$base =~ s/([A-Z]+)([A-Z][a-z])/\${1}_\${2}/g;
        \$base =~ s/([a-zA-Z])(\\d)/\${1}_\${2}/g;
        \$base =~ s/(\\d)([a-zA-Z])/\${1}_\${2}/g;
        \$base =~ s/-/_/g;
        \$_ = lc(\$base . \$ext);
    "

    set -l apply false
    set -l files

    for arg in $argv
        if test "$arg" = "apply"
            set apply true
        else
            set -a files $arg
        end
    end

    if test (count $files) -eq 0
        set files *
    end

    if $apply
        echo "Applying rename (no dry-run)…"
        rename "$rename_cmd" $files
    else
        echo "Dry-run (use 'apply' flag to rename)"
        rename -n "$rename_cmd" $files
    end
end

