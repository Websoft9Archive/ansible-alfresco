# FAQ

#### Alfresco 是否支持多语言？

支持（包含中文），后台可以自行切换

#### Alfresco Content Services Enterprise 与 Alfresco Community Edition 有什么不同？

Alfresco Community Edition 是 Alfresco Content Services Enterprise 的开源版本，参考[对比](https://www.alfresco.com/alfresco-content-services-enterprise-vs-alfresco-community-edition)

#### Alfresco 支持哪些文件格式？

参考[Alfresco支持所有文件格式](https://www.alfresco.com.cn/alfresco-formats)

#### 本项目中 Alfresco 采用何种安装方式？

Docker

#### 如果没有域名是否可以部署 Alfresco？

可以，访问`http://服务器公网IP` 即可

#### 数据库 root 用户对应的密码是多少？

密码存放在服务器相关文件中：`/credentials/password.txt`

#### 是否有可视化的数据库管理工具？

有，内置 pgAdmin，访问地址：*http://服务器公网IP:9090*


#### 是否可以修改Alfresco的源码路径？

不可以

#### 如何修改上传的文件权限?

```shell
# 拥有者
chown -R apache.apache /data/wwwroot/
# 读写执行权限
find /data/wwwroot/ -type d -exec chmod 750 {} \;
find /data/wwwroot/ -type f -exec chmod 640 {} \;
```

#### 部署和安装有什么区别？

部署是将一序列软件按照不同顺序，先后安装并配置到服务器的过程，是一个复杂的系统工程。  
安装是将单一的软件拷贝到服务器之后，启动安装向导完成初始化配置的过程。  
安装相对于部署来说更简单一些。 

#### 云平台是什么意思？

云平台指提供云计算服务的平台厂家，例如：Azure,AWS,阿里云,华为云,腾讯云等

#### 实例，云服务器，虚拟机，ECS，EC2，CVM，VM有什么区别？

没有区别，只是不同厂家所采用的专业术语，实际上都是云服务器
