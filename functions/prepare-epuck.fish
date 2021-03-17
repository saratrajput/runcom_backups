function prepare-epuck
    sudo rfcomm bind /dev/rfcomm0 CC:50:E3:B7:FF:6E 2
    export WEBOTS_COM1=/dev/rfcomm0
end
