FROM python:3.9

WORKDIR /runner

COPY ./requirements.txt /runner/requirements.txt

RUN pip3 install --no-cache-dir --upgrade -r /runner/requirements.txt

COPY ./run.sh /runner/run.sh
RUN chmod 777 /runner/run.sh

CMD ["bash","run.sh"]
