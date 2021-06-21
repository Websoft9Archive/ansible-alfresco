---
sidebarDepth: 3
---

# 参数

Alfresco 预装包包含 Alfresco 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

本部署方案中的 Alfresco 采用 Docker 部署，运行 `docker ps` 查看运行的容器。
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

Nginx 虚拟主机配置文件：*/etc/nginx/conf.d/default.conf*  
Nginx 主配置文件： */etc/nginx/nginx.conf*  
Nginx 日志文件： */var/log/nginx*  
Nginx 伪静态规则目录： */etc/nginx/conf.d/rewrite*  
Nginx 验证访问文件：*/etc/nginx/.htpasswd/htpasswd.conf*  

### PostgreSQL

PostgreSQL 数据目录：*/data/db/postgresql/data*  
PostgreSQL 日志目录: */data/db/postgresql/log*  

### pgAdmin

pgAdmin 是官方出品的可视化 PostgreSQL 管理工具，采用 Docker 安装

pgAdmin 存储目录: */data/apps/pgadmin*  
pgAdmin 配置文件: */data/apps/pgadmin/.env*  

### Docker

Docker 根目录: */var/lib/docker*  
Docker 镜像目录: */var/lib/docker/image*   
Docker daemon.json 文件：默认没有创建，请到 */etc/docker* 目录下根据需要自行创建   

## 端口号

在云服务器中，通过 **[安全组设置](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** 来控制（开启或关闭）端口是否可以被外部访问。 

通过命令`netstat -tunlp` 看查看相关端口，下面列出可能要用到的端口：

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| TCP | 80 | 通过 HTTP 访问 Alfresco Share  | 必要 |
| TCP | 443 | 通过 HTTPS 访问 Alfresco Share | 可选 |
| TCP | 8080 | 通过 HTTP 访问 Alfresco 入口 | 可选 |
| TCP | 5432 | PostgreSQL 远程访问 | 可选 |
| TCP | 9090 | 通过 HTTP 访问 pgAdmin | 可选 |

## 版本号

组件版本号可以通过云市场商品页面查看。但部署到您的服务器之后，组件会自动进行更新导致版本号有一定的变化，故精准的版本号请通过在服务器上运行命令查看：

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
