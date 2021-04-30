FROM nginx:1.17.8

RUN rm /etc/nginx/conf.d/default.conf
RUN apt-get update
RUN apt-get install curl certbot python-certbot-nginx -y
COPY nginx.conf /etc/nginx/conf.d
COPY certs/fullchain.pem /etc/nginx
COPY certs/privkey.pem /etc/nginx
RUN curl https://ssl-config.mozilla.org/ffdhe2048.txt > /etc/nginx/dhparam.pem
RUN mkdir -p certbot