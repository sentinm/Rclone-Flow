FROM rclone/rclone:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY install.sh .

CMD ["bash","install.sh"]
