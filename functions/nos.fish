function nos
    notify-send -u critical $argv -t 0;
    play -nqt alsa synth 0.1 sine 880 vol 0.5;
end
