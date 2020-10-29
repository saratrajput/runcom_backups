function remote-windows
        #sshfs suraj@192.168.1.59:/ windows; copycat /home/sp/remote/scripts/windows_pwd;
        sshfs suraj@10.21.1.199:/ windows; copycat /home/sp/remote/scripts/windows_pwd;
end
