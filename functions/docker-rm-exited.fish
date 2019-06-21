function docker-rm-exited
        docker rm (docker ps -a -q -f status=exited);
end
