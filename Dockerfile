FROM node:16

WORKDIR /runner
COPY ./build.js /runner/build.js
RUN chmod 777 build.js

CMD ["node","build.js"]
