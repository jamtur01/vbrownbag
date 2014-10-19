FROM       ubuntu:12.04
MAINTAINER James Turnbull "james@example.com"

RUN apt-get update && apt-get install -q -y apache2
ADD index.html /var/www/
 
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
           
EXPOSE 80
           
ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
