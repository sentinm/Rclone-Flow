FROM bash:latest

WORKDIR /runner

COPY ./install.sh /runner/install.sh
RUN chmod 777 /runner/install.sh
RUN echo "Installing Rclone on Server"

CMD ["bash","install.sh"]

COPY ./rclone.sh /runner/rclone.sh
RUN chmod 777 /runner/rclone.sh
RUN echo "Running web gui command"

CMD ["bash","rclone.sh"]
