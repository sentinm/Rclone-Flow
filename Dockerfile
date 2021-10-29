FROM ubuntu:20.04

WORKDIR /usr
COPY ./index.js /usr/bin/app/index.js
RUN chmod 777 /usr/bin/app/index.js

RUN sudo apt-get upgrade \
 && sudo apt install sudo -y \
 && sudo apt install rclone -y 

CMD ["node","index.js"]
