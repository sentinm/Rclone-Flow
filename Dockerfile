FROM bash:latest

WORKDIR /runner
COPY ./rclone.sh /runner/rclone.sh
RUN chmod 777 /runner/rclone.sh

CMD ["bash","rclone.sh"]
