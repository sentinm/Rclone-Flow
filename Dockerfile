FROM bash:latest

WORKDIR /usr/src/app
COPY ./run.sh /usr/src/app/run.sh
RUN chmod 777 /usr/src/app/run.sh

CMD ["bash","run.sh"]
