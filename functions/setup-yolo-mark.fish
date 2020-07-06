function setup-yolo-mark
    ls img/ | grep png > train.txt
    sed -i -e 's/^/\/home\/sp\/repos\/yolo_mark\/x64\/Release\/data\/img\//' train.txt
end
