FROM centos:7
ARG filename
RUN yum install httpd -y
RUN yum -y install php 
RUN yum install php-common \
    php \
    php-mysql\
   php-xml\
    php-soap\
    ncurses \
    net-tools -y
COPY $filename /var/www/html/
# RUN echo "ServerName 0.0.0.0:80" >> /etc/httpd/conf/httpd.conf
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80



# FROM centos:latest
# ARG filename
# RUN yum install net-tools \
#     ncurses \
#     vim \
#     php \
#     httpd -y
# COPY $filename /var/www/html/
# CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
# EXPOSE 80

# RUN echo -e "rm -rf /var/run/httpd/*" >> /root/.bashrc 
# RUN echo "/usr/sbin/httpd -DFOREGROUND" >> /root/.bashrc
