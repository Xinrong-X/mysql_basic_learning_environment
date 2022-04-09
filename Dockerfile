FROM nanamisauce/mysql_basic_learning_environment:latest
MAINTAINER xiexin<1969982237@qq.com>
ENV MYPATH /root/
WORKDIR $MYPATH
ENV LANG=C.UTF-8
COPY ./start-mysql.sh /root/
COPY ./mysql.cnf /etc/mysql/conf.d/
RUN chmod 644 /root/start-mysql.sh
ENTRYPOINT bash /root/start-mysql.sh
