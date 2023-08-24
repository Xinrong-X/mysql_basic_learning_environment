# mysql_basic_learning_environment
基于Docker快速构建mysql基础学习环境


##### 1. pull docker images（拉取镜像）
```
docker pull nanamisauce/mysql_basic_learning_environment
```
##### 2. clone github repository（拉取github仓库文件，非必要）
```
git clone https://github.com/Machine-gun-dadadadadadada/mysql_basic_learning_environment.git
```
##### 3. create container（设置容器参数）
```
docker run -it --name mysql -h mysql -p 3306:3306 nanamisauce/mysql_basic_learning_environment /bin/bash
```
##### 4. enter mysql（进入mysql）
```
root@mysql:~# mysql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 77
Server version: 5.7.36 MySQL Community Server (GPL)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> 
```
##### 5. allow remote connections and configure passwords（设置允许远程登录，以及密码）
```
mysql> grant all privileges on *.* to 'root'@'%' identified by '123456' with grant option;
```
##### 6. view character encoding（mysql字符编码，确保mysql输入中文不会乱码）
```
mysql> show variables like 'character_%';
+--------------------------+----------------------------+
| Variable_name            | Value                      |
+--------------------------+----------------------------+
| character_set_client     | utf8                       |
| character_set_connection | utf8                       |
| character_set_database   | utf8                       |
| character_set_filesystem | binary                     |
| character_set_results    | utf8                       |
| character_set_server     | utf8                       |
| character_set_system     | utf8                       |
| character_sets_dir       | /usr/share/mysql/charsets/ |
+--------------------------+----------------------------+
8 rows in set (0.00 sec)
```
```
mysql> show variables like 'collation_%';
+----------------------+-----------------+
| Variable_name        | Value           |
+----------------------+-----------------+
| collation_connection | utf8_general_ci |
| collation_database   | utf8_general_ci |
| collation_server     | utf8_general_ci |
+----------------------+-----------------+
3 rows in set (0.01 sec)
```
##### 7. remote connection test using navicat（远程测试）
![alt tag](https://github.com/Machine-gun-dadadadadadada/mysql_basic_learning_environment/raw/master/test.png)
