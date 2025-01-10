FROM nginx

COPY ./nginx.conf /etc/nginx/conf.d

RUN chmod -R 777 /etc/letsencrypt/live

CMD ["nginx", "-g", "daemon off;"]