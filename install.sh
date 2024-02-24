docker run -it -v ~:/share -v /var/run/docker.sock:/var/run/docker.sock -e TZ=Europe/Berlin --name aichat ghcr.io/manegit/docker-aichat /bin/zsh
