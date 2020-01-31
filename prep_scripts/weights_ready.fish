#!/usr/bin/fish

inotifywait -m /home/suraj/darknet/dishwasher_backup -e create | while read file
    echo "weights ready" | mail -s "yolo-1 dishwasher11_2 weights ready" pattarsuraj@gmail.com
end
