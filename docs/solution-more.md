# More

Each of the following solutions has been proved to be effective and we hope it can give you help.

## Binding Domain

The precondition for binding a domain is that Alfresco can accessed by domain name.

When there is only one website on the server, you can visit the website without binding domain. While considering the server security and subsequent maintenance, **Binding Domain** is necessary.

Steps for binding Alfresco domain are as follows:

1. Connect your Cloud Server;
2. Modify [Nginx vhost configuration file](/stack-components.md#nginx),and change the **server_name**'s value to your domain name.
   ```text
   server
   {
   listen 80;
   server_name www.example.com;  # change it into your domain name
   ...
   }
   ```
3. Restart Nginx service
   ```
   sudo systemctl restart nginx
   ```

## Resetting Password

There are two main measures to reset password.

### Changing password

Take the steps below: 

1. Login Alfresco, open 【Administrator】>【My Profile】 
  ![Alfresco modify password](https://libs.websoft9.com/Websoft9/DocsPicture/en/alfresco/alfresco-modifypw-websoft9.png)

2. Click【Change your Password】, start to change the password.

### Forgot Password

Try to retrieve your password through database table as below: 

1. Use **SSH** to connect Alfresco instances

2. Run the `psql` of Alfresco
   ```
   docker exec -it alfresco-postgres psql -U alfresco -d alfresco
   ```

3. Modify password by below SQL command (The new password is set to `admin`)
   ```
   UPDATE alf_node_properties SET string_value='209c6174da490caeb422f3fa5a7ae634' WHERE node_id=4 and qname_id=10
   ```

4. Exit the `psql` of PostgreSQL, then restart all containers
   ```
   cd /data/wwwroot/alfresco
   docker-compose restart
   ```
