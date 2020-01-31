#!/usr/bin/fish

for f in (ls half_rack_images/ | grep png |sed -e 's/\.png//' | shuf -n 500)
    mv half_rack_images/$f.txt half_rack_images/$f.png -t half_rack_test_images/
end
