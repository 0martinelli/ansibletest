#!/bin/bash
# set the right permissions
sudo chmod 666 /var/run/docker.sock
# remove the nginx container
docker rm --force $(docker container ls | grep nginx | awk '{ print $NF }')
# build up the Python script.
echo "print(\"Hello This is a Simple Python App\")" > script.py
# give the script the right permissions
chmod +x script.py
# Print the result of the cript in a index file to be used by nginx
python3 script.py > index.html
# Build up a new nginx container that has the result of the script on its index page.
docker run -it --rm -d -p 80:80 --name nginx$RANDON -v /home/ubuntu/:/usr/share/nginx/html nginx