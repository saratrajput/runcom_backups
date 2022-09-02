function shuffle-test-jpg

    for f in (ls $argv[1] | grep jpg |sed -e 's/\.jpg//' | shuf -n $argv[3])
        mv $argv[1]/$f.txt $argv[1]/$f.jpg -t $argv[2]
    end
end
