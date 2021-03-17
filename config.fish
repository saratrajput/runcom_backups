
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/sp/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set PATH /usr/local/cuda-11.1/bin $PATH
set LD_LIBRARY_PATH /usr/local/cuda11.1/lib64 $LD_LIBRARY_PATH
