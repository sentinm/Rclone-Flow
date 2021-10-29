FROM node:16

WORKDIR /runner
COPY ./index.js /runner/index.js
RUN chmod 777 /runner/index.js

RUN curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip \
 && unzip rclone-current-linux-amd64.zip \
 && cd rclone-*-linux-amd64 \
 && cp rclone /usr/bin/ \
 && chown root:root /usr/bin/rclone \
 && chmod 755 /usr/bin/rclone \
 && mkdir -p /usr/local/share/man/man1 \
 && cp rclone.1 /usr/local/share/man/man1/ \
 && mandb

CMD ["node","index.js"]
