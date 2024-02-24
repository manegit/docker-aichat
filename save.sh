docker image save -o /tmp/docker-aichat.tar ghcr.io/manegit/docker-aichat:latest
gzip /tmp/docker-aichat.tar
mv -f /tmp/docker-aichat.tar.gz ~/

