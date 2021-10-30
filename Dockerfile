FROM node:16

WORKDIR /usr/src/app
COPY ./index.js /usr/src/app/index.js
RUN chmod 777 /usr/src/app/index.js

CMD ["node","index.js"]
