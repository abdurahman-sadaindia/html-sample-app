FROM ubuntu

RUN apt-get update

RUN apt-get install nginx -y

COPY . /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]