function remote-old-master-lan
    sshfs user@192.168.26.2:/ old_master; cd old_master/home/user/;
end
