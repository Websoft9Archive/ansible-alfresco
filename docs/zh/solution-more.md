# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 域名绑定

绑定域名的前置条件是：已经完成域名解析（登录域名控制台，增加一个A记录指向服务器公网IP）  

完成域名解析后，从服务器安全和后续维护考量，需要完成**域名绑定**：

Alfresco 域名绑定操作步骤：

1. 确保域名解析已经生效  
2. 使用 SFTP 工具登录云服务器
3. 修改 [Nginx虚拟机主机配置文件](/zh/stack-components.md#nginx)，将其中的 **server_name** 项的值修改为你的域名
   ```text
   server
   {
   listen 80;
   server_name alfresco.yourdomain.com;  # 此处修改为你的域名
   ...
   }
   ```
4. 保存配置文件，重启 [Nginx 服务](/zh/admin-services.md#nginx)

## 重置密码

常用的 Alfresco 重置密码相关的操作主要有修改密码和找回密码两种类型：

### 修改密码

1. 登录 Alfresco 后台，右上角依次打开：【Administrator】>【我的个人档案】
  ![Alfresco 修改密码](https://libs.websoft9.com/Websoft9/DocsPicture/zh/alfresco/alfresco-modifypw-websoft9.png)

2. 点击【更改密码】，开始修改密码

### 找回密码

如果用户忘记了密码，需要通过修改[数据库](/zh/admin-postgresql.md)中的密码信息来重置密码：

1. 使用 **SSH** 连接到 Alfresco 所在的服务器

2. 进入到 alfresco 数据库的 PSQL 交互式状态
   ```
   docker exec -it alfresco-postgres psql -U alfresco -d alfresco
   ```

3. 运行如下的修改密码命令（新的密码为 **admin**）
   ```
   UPDATE alf_node_properties SET string_value='209c6174da490caeb422f3fa5a7ae634' WHERE node_id=4 and qname_id=10
   ```

4. 退出容器交互式模式，回到服务器命令行中重启所有容器后生效
   ```
   cd /data/wwwroot/alfresco
   docker-compose restart
   ```
