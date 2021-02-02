function khepera-prog
    # Open khepera ssh tab
    guake -n " " -r "khepera" -e "ssh -X root@192.168.0.112;"

    # Open scp tab
    guake -n " " -r "scp" -e "cd ~/khepera4_development/libkhepera-2.1/src/tests"

    # Open compile tab
    guake -n " " -r "compile" -e "cd ~/khepera4_development/libkhepera-2.1/src/tests"
    guake -e "bash"

    # Open vim tab
    guake -n " " -r "vim" -e "cd ~/khepera4_development/libkhepera-2.1/src/tests"
end
