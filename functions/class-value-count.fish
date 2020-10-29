function class-value-count
    for i in (seq 0 11)
        grep -m1 -w '^'$i'' (ls | grep txt | grep $argv[1]) | wc
    end
end		

for i in (seq 0 11)
grep -m1 -w '^'$i'' (ls | grep txt | grep dr) | wc
end
