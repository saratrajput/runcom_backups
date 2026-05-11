function disk-space
    df -h /dev/nvme0n1p7 | tail -n 1 | awk '{print $4}'
end
