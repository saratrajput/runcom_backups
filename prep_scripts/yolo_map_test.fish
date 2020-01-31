#!/usr/bin/fish

for i in dishwasher_backup/dishwasher*
	echo \n$i\n >> map_results.csv; ./darknet detector map dishwasher_data/obj.data dishwasher.cfg $i -iou_thresh=0.75 >> map_results.csv
end

grep -e 'class' -e 'mean' -e 'dishwasher' map_results.csv > dishwasher11_2.csv

