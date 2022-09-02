function shuffle-test-only-images

    for f in (ls $argv[1] | grep png |sed -e 's/\.png//' | shuf -n $argv[3])
        mv $argv[1]/$f.png -t $argv[2]
    end
end
