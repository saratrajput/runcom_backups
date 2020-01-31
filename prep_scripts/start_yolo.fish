#!/usr/bin/fish

./darknet detector train dishwasher_data/obj.data dishwasher.cfg dishwasher_backup/dishwasher_1000.weights -gpus 0,1,2,3 | tee -a dishwasher11_2_step_2.log
