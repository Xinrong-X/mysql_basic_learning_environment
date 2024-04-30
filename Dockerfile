FROM mysql:5.7
MAINTAINER xiexin<1969982237@qq.com>
ENV LANG=C.UTF-8 WORKPATH=/root/
WORKDIR $WORKPATH
RUN echo '#!/bin/bash\necho -e "\\e[1;32m1.starting mysql...\\e[0m"\nservice mysql start &> /dev/null\n/bin/bash' > /root/start-mysql.sh \
	&& echo '[mysql]\ndefault-character-set=utf8\n[client]\ndefault-character-set=utf8\n[mysqld]\ncharacter-set-server=utf8\ncollation-server=utf8_general_ci' > /etc/mysql/conf.d/mysql.cnf
ENTRYPOINT ["bash" , "/root/start-mysql.sh"]
