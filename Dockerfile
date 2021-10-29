FROM node:16

WORKDIR /runner
COPY ./index.js /runner/index.js
RUN chmod 777 /runner/index.js

RUN apt-get update \
 && apt-get install -y sudo

RUN chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo

CMD ["node","index.js"]
