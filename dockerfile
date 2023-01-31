# FROM nginx
# COPY .  /usr/src/app

# EXPOSE 8080

# /usr/src/app/index.html

FROM ubuntu

RUN apt-get update

RUN apt-get install nginx -y

COPY . /var/www/html/

EXPOSE 80

CMD [“nginx”,”-g”,”daemon off;”]