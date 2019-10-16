function compress-video
    ffmpeg -i $argv[1] -strict -2 -vcodec libx264 -crf 20 $argv[2]
end
