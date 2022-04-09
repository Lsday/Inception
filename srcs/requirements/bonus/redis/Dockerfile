FROM  alpine:3.15.4

RUN	apk update && apk upgrade && apk add  --update redis
     

ADD tools/redis_init.sh /
RUN chmod +x /redis_init.sh
ENTRYPOINT [ "./redis_init.sh" ]