FROM node:16

WORKDIR /runner
COPY ./index.js /runner/index.js
RUN chmod 777 /runner/index.js

RUN su -
RUN apt install sudo

CMD ["node","index.js"]
