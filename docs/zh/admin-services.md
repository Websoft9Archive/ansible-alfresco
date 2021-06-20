# 服务启停

使用由Websoft9提供的 Alfresco 部署方案，可能需要用到的服务如下：

### Alfresco

```shell
sudo systemctl start alfresco-server
sudo systemctl stop alfresco-server
sudo systemctl restart alfresco-server
sudo systemctl status alfresco-server

# you can use this debug mode if Alfresco service can't run
alfresco-server console
```

### MySQL

```shell
sudo systemctl start mysql
sudo systemctl stop mysql
sudo systemctl restart mysql
sudo systemctl status mysql
```

### MySQL on Docker

```shell
sudo docker start redmine-mysql
sudo docker restart redmine-mysql
sudo docker stop redmine-mysql
sudo docker stats redmine-mysql
```

### Redis

```shell
systemctl start redis
systemctl stop redis
systemctl restart redis
systemctl status redis
```

### phpMyAdmin

```shell
sudo docker start phpmyadmin
sudo docker stop phpmyadmin
sudo docker restart phpmyadmin
sudo docker stats pgadmin
```

### Docker

```shell
sudo systemctl start docker
sudo systemctl restart docker
sudo systemctl stop docker
sudo systemctl status docker
```

### Docker-compose 服务

```
#创建容器编排
sudo docker-compose up

#创建容器编排并重建有变化的容器
sudo docker-compose up -d

#启动/重启
sudo docker-compose start
sudo docker-compose stop
sudo docker-compose restart
```

### Nginx

```shell
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl status nginx
```
