FROM nginx:1.23.3-alpine as runtime

ARG COMPILED_LOCATION

COPY ${COMPILED_LOCATION}/ /usr/share/nginx/html
RUN echo 'server {\
    listen       80;\
    listen       443;\
    listen  [::]:443;\
    listen  [::]:80;\
    server_name  localhost;\
\
    location / {\
		add_header Cache-Control 'no-store';\
        root   /usr/share/nginx/html;\
        index  index.html index.htm;\
        try_files $uri /index.html =404;\
    }\
\
    error_page   500 502 503 504  /50x.html;\
    location = /50x.html {\
        root   /usr/share/nginx/html;\
    }\
}\
' \
> /etc/nginx/conf.d/default.conf

COPY container-startup.sh /usr/share/container-startup.sh

RUN apk add --no-cache jq && chmod +x /usr/share/container-startup.sh

EXPOSE 80 443

CMD [ "/usr/share/container-startup.sh" ]