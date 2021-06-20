# 初始化安装

在云服务器上部署 Alfresco 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80** 端口是否开启
3. 若想用域名访问 Alfresco，请先到 **域名控制台** 完成一个域名解析

## Alfresco 安装向导

1. 使用本地电脑的浏览器访问网址：*http://域名* 或 *http://服务器公网IP*, 进入登陆界面
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/alfresco/alfresco-login-websoft9.png)

2. 输入账号密码（[不知道账号密码？](/zh/stack-accounts.md#alfresco)），成功登录到 Alfresco 后台  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/alfresco/alfresco-consolegui-websoft9.png)

3. Alfresco会自动根据浏览器语言来选择程序语言

> 需要了解更多 Alfresco 的使用，请参考官方文档：[Alfresco Documentation](https://docs.alfresco.com/content-services/community/using/content/)

## Alfresco 入门向导

现在开始针对于如何使用 Alfresco 传输数据，进行完整的说明：

- 后台仪表盘
  ![Alfresco台仪表盘](http://libs.websoft9.com/Websoft9/DocsPicture/zh/alfresco/alfresco-adminui-websoft9.png)

- 我的文档
  ![Alfresco我的文档](http://libs.websoft9.com/Websoft9/DocsPicture/zh/alfresco/alfresco-mydocs-websoft9.png)

- 共享文档
  ![Alfresco共享文档](http://libs.websoft9.com/Websoft9/DocsPicture/zh/alfresco/alfresco-sharedocs-websoft9.png)

- 增加多用户
  ![Alfresco增加多用户](http://libs.websoft9.com/Websoft9/DocsPicture/zh/alfresco/alfresco-addusers-websoft9.png)

- 增加组（部门）
  ![Alfresco增加组（部门）](http://libs.websoft9.com/Websoft9/DocsPicture/zh/alfresco/alfresco-addgroup-websoft9.png)

- 工作流（审批）
  ![Alfresco工作流（审批）](http://libs.websoft9.com/Websoft9/DocsPicture/zh/alfresco/alfresco-workflow-websoft9.png)

## 常见问题

#### 浏览器打开IP地址，无法访问 Alfresco（白屏没有结果）？

您的服务器对应的安全组 80 端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容。  

实际上，Alfresco 服务默认绑定在 8080 端口，即也可通过：*http://服务器公网IP:8080* 访问它

#### Alfresco 服务启动失败？

Alfresco 开机启动最少需要 10 分钟，请耐心等待

#### 本方案中 Alfresco 采用哪种安装方式？

Docker 安装