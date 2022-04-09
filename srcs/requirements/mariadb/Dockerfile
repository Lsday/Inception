FROM  alpine:3.15.4
 
RUN	apk update && apk upgrade && apk add --no-cache mariadb mariadb-client
      
COPY tools/init_db.sh .

ENTRYPOINT ["sh","./init_db.sh"]
