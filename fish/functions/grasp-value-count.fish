function grasp-value-count
    for i in bowl little_soba lrice miffy miso sbowl sdish sobadip udon uneven salad soba_
        ls | grep png | grep '^'$i'' | wc
    end
end
