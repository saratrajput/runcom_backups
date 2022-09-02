function yolo-class-count
    grep -m1 -w '^$argv' *.txt | wc
end
