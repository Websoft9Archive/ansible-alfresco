## 安装方式

### 源码安装

首先，通过安装必备软件（JRE，数据库和消息代理）来准备生产服务器，然后再继续。

1. [下载](https://www.alfresco.com/thank-you/thank-you-downloading-alfresco-community-edition)发行版zip文件。
2. 生成用于相互TLS的证书。
3. 下载Tomcat并查看所需的安装步骤。
4. 设置Tomcat。
5. 安装和配置Alfresco Content Services。
6. 安装任何Alfresco模块软件包，例如Alfresco Share，Google Docs Integration和Alfresco Office Services。
7. 设置ActiveMQ。
8. 安装Alfresco Content Services使用的第三方软件。这包括LibreOffice，ImageMagick和Alfresco PDF Renderer。
9. 安装Alfresco Content Services的兄弟软件，包括：Configuring the File System Transfer Receiver，Alfresco Search Services

### Docker 安装

官方提供了Docker compose 文件，适用于一键部署

安装选择：源码安装适用于生产环境，但是源码安装需要安装多个第三方软件，并涉及连接问题，安装过程非常复杂，维护成本较高，因此最后采用Docker安装方式。
