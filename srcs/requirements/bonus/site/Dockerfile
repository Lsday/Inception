FROM  alpine:3.15.4

# Update System and Install Tools
RUN apk update
RUN apk add --update nodejs npm

ADD ./tools/index.html .
ADD ./tools/oronda.js .
ADD ./tools/main.css .

CMD node oronda.js