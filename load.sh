gunzip -k ../docker-aichat.tar.gz
docker image load -i ../docker-aichat.tar
rm ../docker-aichat.tar
