function remote-cr-dgx
    #sshfs crdw@192.168.1.62:/ dgx; cd dgx/home/crdw/;
    sshfs cr@10.21.0.67:/ cr_dgx; cd cr_dgx/home/cr/;
end
