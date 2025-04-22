FROM ubuntu:22.04
RUN apt update
RUN apt install apache2 -y
ADD . /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
