function compress-video
    ffmpeg -i $argv[1] -strict -2 -vcodec libx265 -crf 20 $argv[2]
end
#ffmpeg -i $argv[1] -strict -2 -vcodec libx265 -crf 20 $argv[2]
