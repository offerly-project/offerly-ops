FROM nginx

COPY ./nginx.conf /etc/nginx/conf.d

COPY /etc/letsencrypt/live /etc/letsencrypt/live

RUN chmod -R 777 /etc/letsencrypt/live

CMD ["nginx", "-g", "daemon off;"]