docker-eelly
==============

修改docker-eelly/docker-compose.yml 文件的**volumes**路径

这里预设值了 api.eelly.dev 站点,把你的代码 git 到这个目录.

cd docker-eelly/

执行: 
```
$ docker-compose build
$ docker-compose up
```

修改你的 hosts 指向,就可以访问你的站点了.

---

-关于导入数据库:
从本地到处数据库结构,检查有没有新增库的 SQL, 如果没有新增改语句:
```
DROP DATABASE IF EXISTS `oauth`;
CREATE DATABASE `oauth`;
USE oauth;

```

具体表结构语句
具体数据语句

-关于新增虚拟机
在 nginx/vhost新增站点配置文件,

-错误日志在 logs 文件夹
-需要在自己在data/logs/ 下面创建 nginx 文件，否则nginx启动不起

问题
    无法连接到外网?
    
        docker network ls
        docker network rm 4444
        docker network create -d macvlan  --subnet=172.18.108.0/16 --gateway=172.18.108.254 -o parent=eth0.7 gitlab-net    