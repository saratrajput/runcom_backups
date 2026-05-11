function camel_to_snake
    set rename_cmd "
        s/([a-z0-9])([A-Z])/\$1_\$2/g;
        s/([A-Z]+)([A-Z][a-z])/\$1_\$2/g;
        \$_ = lc \$_;
    "

    if test (count $argv) -gt 0; and test "$argv[1]" = "apply"
        echo "Applying rename (no dry-run)…"
        rename "$rename_cmd" *
    else
        echo "Dry-run (use: camel_to_snake apply to rename)"
        rename -n "$rename_cmd" *
    end
end

