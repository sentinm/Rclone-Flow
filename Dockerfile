FROM rclone/rclone:latest as img1

FROM node:16 as img2

WORKDIR /runner

COPY ./rclone.js /runner/rclone.js
RUN chmod 777 /runner/rclone.js

CMD ["node","rclone.js"]
