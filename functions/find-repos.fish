function find-repos
    for d in (find . -name .git -type d -prune)
        grep -m 1 'url' $d/config >> repo_list.txt
    end
    echo "Repo url written to repo_list.txt"
end
