FROM bash:latest

WORKDIR /runner

COPY ./setup.sh /runner/setup.sh
RUN chmod 777 /runner/setup.sh
RUN echo "Installing Rclone on Server"

CMD ["bash","setup.sh"]

COPY ./rclone.sh /runner/rclone.sh
RUN chmod 777 /runner/rclone.sh
RUN echo "Running web gui command"

CMD ["bash","rclone.sh"]
