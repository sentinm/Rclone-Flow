FROM ubuntu:16.04

WORKDIR /app

ENV USERNAME=admin
ENV PASSWORD=admin
ENV CONF_BASE64="" 

RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment
RUN echo "LANG=en_US.UTF-8" >> /etc/environment
RUN echo "NODE_ENV=development" >> /etc/environment
RUN more "/etc/environment"

RUN apt-get update
RUN apt-get install curl git unzip zip -y

RUN curl -sL https://rclone.org/install.sh | bash
RUN rclone version

ADD run.sh /app/
RUN chmod a+x /app/run.sh
RUN mkdir /app/.config/

CMD ["./run.sh"]
