FROM golang:1.4.2

RUN export ambition_port=7777
RUN export ambition_dbname=ambition
RUN export ambition_username=ambition
RUN export ambition_password=ambition

RUN apt-get update && apt-get install -y postgresql

RUN adduser ambition

RUN su postgres

RUN createdb ambition

RUN psql

RUN ALTER USER ambition PASSWORD 'ambition';

RUN exit

COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod +x /sbin/entrypoint.sh

EXPOSE 7777

ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["godo"]
