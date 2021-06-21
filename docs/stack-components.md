# Parameters

The Alfresco deployment package contains a sequence of software (referred to as "components") required for Alfresco to run. Below list the important information, the component name, installation directory path, configuration file path, port, version, etc.

## Path

This solution use Docker to deploy all service, you can run the command `docker ps` to list them  

```
CONTAINER ID   IMAGE                                                  COMMAND                  CREATED             STATUS             PORTS                                                                                                                                                                                NAMES
3d2afa8a1cc7   alfresco/alfresco-acs-nginx:3.1.1                      "/entrypoint.sh"         About an hour ago   Up About an hour   80/tcp, 0.0.0.0:8080->8080/tcp, :::8080->8080/tcp                                                                                                                                    alfresco-proxy
b42251c78a71   alfresco/alfresco-search-services:2.0.1                "/bin/sh -c '$DIST_D…"   About an hour ago   Up About an hour   10001/tcp, 0.0.0.0:8083->8983/tcp, :::8083->8983/tcp                                                                                                                                 alfresco-solr6
a381a9646f4b   alfresco/alfresco-transform-core-aio:2.3.10            "/bin/sh -c 'java $J…"   About an hour ago   Up About an hour   0.0.0.0:8090->8090/tcp, :::8090->8090/tcp                                                                                                                                            alfresco-transform
af14e4d3cd86   alfresco/alfresco-content-repository-community:7.0.0   "catalina.sh run -se…"   About an hour ago   Up About an hour   8000/tcp, 8080/tcp, 10001/tcp                                                                                                                                                        alfresco-content
50059f56edff   postgres:13.1                                          "docker-entrypoint.s…"   About an hour ago   Up About an hour   0.0.0.0:5432->5432/tcp, :::5432->5432/tcp                                                                                                                                            alfresco-postgres
692e2acf019d   alfresco/alfresco-activemq:5.16.1                      "/bin/sh -c '${ACTIV…"   About an hour ago   Up About an hour   0.0.0.0:5672->5672/tcp, :::5672->5672/tcp, 0.0.0.0:8161->8161/tcp, :::8161->8161/tcp, 0.0.0.0:61613->61613/tcp, :::61613->61613/tcp, 0.0.0.0:61616->61616/tcp, :::61616->61616/tcp   alfresco-activemq
ca3a6baf750e   alfresco/alfresco-share:7.0.0                          "/usr/local/tomcat/s…"   About an hour ago   Up About an hour   8000/tcp, 8080/tcp                                                                                                                                                                   alfresco-share
4a0c8d7e6c2e   dpage/pgadmin4                                         "/entrypoint.sh"         About an hour ago   Up About an hour   443/tcp, 0.0.0.0:9090->80/tcp, :::9090->80/tcp                                                                                                                                       pgadmin
```

### Alfresco

Alfresco 安装目录： */data/wwwroot/alfresco*  
Alfresco 容器存储目录： */data/wwwroot/alfresco/volumes/alfresco*  
Alfresco 日志目录： */data/wwwroot/alfresco/volumes/alfresco/share/logs*  

> 上传的文档存放在...

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*    
Nginx main configuration file: */etc/nginx/nginx.conf*   
Nginx logs file: */var/log/nginx*  
Nginx rewrite rules directory: */etc/nginx/conf.d/rewrite*  
Nginx htpasswd file: */etc/nginx/.htpasswd/htpasswd.conf*  

### PostgreSQL

PostgreSQL data directory: */data/db/postgresql/data*  
PostgreSQL data directory: */data/db/postgresql/logs*  

### pgAdmin

pgAdmin is a visual PostgreSQL management tool, is installed based on docker. 

pgAdmin directory：*/data/apps/pgadmin*  
pgAdmin docker compose file：*/data/apps/pgadmin/docker-compose.yml* 

### Docker

Docker root directory: */var/lib/docker*  
Docker image directory: */var/lib/docker/image*   
Docker daemon.json: please create it when you need and save to to the directory */etc/docker*   

## Ports

Open or close ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/tech-instance.html)** of your Cloud Server to decide whether the port can be accessed from Internet.  

You can run the cmd `netstat -tunlp` to check all related ports.  

The following are the ports you may use:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| TCP | 80 | HTTP to access Alfresco share | Required |
| TCP | 443 | HTTPS to access Alfresco share | Optional |
| TCP | 8080 | Use port to access Alfresco | Optional |
| TCP | 5432 | Remote to access PostgreSQL | Optional |
| TCP | 9090 | HTTP to access pgAdmin on Docker | Optional |


## Version

You can see the version on product pages at Marketplace. However, after being deployed to your server, the components will be updated automatically, resulting in a certain change in the version number. Therefore, run the command on the server to view the exact version number. 

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# Nginx  Version
nginx -V

# Docker Version
docker -v

# PostgreSQL version
docker images |grep postgres |awk '{print $2}'

# Alfresco version
docker images |grep alfresco-share |awk '{print $2}'
```