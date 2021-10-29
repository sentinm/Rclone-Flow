FROM node:16

WORKDIR /usr
COPY ./index.js /usr/bin/app/index.js
RUN chmod 777 /usr/bin/app/index.js

RUN apt install rclone -y
CMD ["rclone","version"]

CMD ["node","index.js"]
