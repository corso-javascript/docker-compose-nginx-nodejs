docker run -d --name=dockerui -e VIRTUAL_HOST=dockerui.lo -p 9000:9000 --privileged -v /var/run/docker.sock:/var/run/docker.sock dockerui/dockerui
