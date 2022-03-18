FROM alpine

RUN apk update
RUN apk add mariadb mariadb-client mariadb-common openrc

RUN openrc
RUN touch /run/openrc/softlevel


#COPY conf.wordpress.sql 

ADD tools/init_db.sh .
RUN chmod +x /init_db.sh


ENTRYPOINT ["sh","./init_db.sh"]
