FROM bash:latest

CMD curl https://rclone.org/install.sh | sudo bash

CMD ["bash","rclone.sh"]
