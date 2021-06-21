# 服务启停

使用由Websoft9提供的 Alfresco 部署方案，可能需要用到的服务如下：

### Alfresco

Alfresco 使用 7 个容器，因此直接使用 Docker-compose 管理所有容器的服务器

```shell

cd /data/wwwroot/alfresco

sudo docker-compose start alfresco-server
sudo docker-compose stop alfresco-server
sudo docker-compose restart alfresco-server
```

### PostgreSQL

```shell
sudo docker start alfresco-postgres
sudo docker restart alfresco-postgres
sudo docker stop alfresco-postgres
sudo docker stats alfresco-postgres
```


### pgAdmin

```shell
sudo docker start pgadmin
sudo docker stop pgadmin
sudo docker restart pgadmin
sudo docker stats pgadmin
```

### Docker

```shell
sudo systemctl start docker
sudo systemctl restart docker
sudo systemctl stop docker
sudo systemctl status docker
```

### Docker-compose

```
#创建容器编排
sudo docker-compose up -d

#启动/停止/重启
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