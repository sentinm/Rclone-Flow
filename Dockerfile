FROM bash:latest

WORDIR /runner
COPY ./rclone.sh /runner/rclone.sh
RUN chmod 777 /runner/rclone.sh

CMD curl https://rclone.org/install.sh | sudo bash

CMD ["bash","rclone.sh"]
