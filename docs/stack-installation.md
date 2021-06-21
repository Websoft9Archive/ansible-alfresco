# Initial Installation

If you have completed the Alfresco deployment, follow the steps below to start a quick use.

## Preparation

1. Get the **Server's Internet IP** of Server on your Cloud Platform.
2. Check your **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the **TCP:80** is allowed.
3. Make a domain resolution on your Cloud Console if you want to use domain for Alfresco.

## Alfresco Installation Wizard

1. Use local browser to access: *http://DNS* or *http://Server's Internet IP*. You will enter Alfresco login page.
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/alfresco/alfresco-login-websoft9.png)

2. Log in Alfresco web console. ([Don't have password?](/stack-accounts.md#alfresco)) 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/alfresco/alfresco-consolegui-websoft9.png)

> More guide about Alfresco, please refer to [Alfresco Documentation](https://docs.alfresco.com/content-services/community/using/content).

## Alfresco Setup wizard

Below is the useful screenshots of Alfresco: 

- Main dashboard
  ![Alfresco dashboard](http://libs.websoft9.com/Websoft9/DocsPicture/en/alfresco/alfresco-adminui-websoft9.png)

- My document
  ![Alfresco document](http://libs.websoft9.com/Websoft9/DocsPicture/en/alfresco/alfresco-mydocs-websoft9.png)

- Document share
  ![Alfresco Document share](http://libs.websoft9.com/Websoft9/DocsPicture/en/alfresco/alfresco-sharedocs-websoft9.png)

- Add user
  ![Alfresco Add user](http://libs.websoft9.com/Websoft9/DocsPicture/en/alfresco/alfresco-addusers-websoft9.png)

- Add group
  ![Alfresco Add group](http://libs.websoft9.com/Websoft9/DocsPicture/en/alfresco/alfresco-addgroup-websoft9.png)

- Workflow management
  ![Alfresco Workflow management](http://libs.websoft9.com/Websoft9/DocsPicture/en/alfresco/alfresco-workflow-websoft9.png)

## Q&A

#### Can't visit the start page of Alfresco?

Your TCP:15672 of Security Group Rules is not allowed, so there is no response from Chrome or Firefox.  

Actually, Alfresco port is 8080 by default, you can access it by URL: *http://服务器公网IP:8080*  

#### Alfresco service not start?

Alfresco need 5-10 minutes for boot starting 

#### Which installation method does Alfresco use in this scenario?

Docker