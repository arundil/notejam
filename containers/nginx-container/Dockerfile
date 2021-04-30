FROM nginx:1.17.8

LABEL author="Marc Bayón Benegas"
LABEL mail="mb154@hotmail.com"

# Update & Install programs
RUN apt-get update
RUN apt-get install curl certbot python-certbot-nginx -y

# Remove Defult config
RUN rm /etc/nginx/conf.d/default.conf

# Copy SSL certs
COPY nginx.conf /etc/nginx/conf.d
COPY certs/fullchain.pem /etc/nginx
COPY certs/privkey.pem /etc/nginx

#Get diffie hellman key exchange alg.
RUN curl https://ssl-config.mozilla.org/ffdhe2048.txt > /etc/nginx/dhparam.pem

# For lets's encrypt ssl
RUN mkdir -p certbot