function value-count
    for i in (seq 0 11)
        grep -m1 -w '^'$i'' *.txt | wc
    end
end		
