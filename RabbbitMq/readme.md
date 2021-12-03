# **Install RabbitMQ**

## Ubuntu 20.04
- First Install Erlang, since RabbitMQ depends on Erlang
- Then now install rabbitMQ
```bash
wget https://github.com/Boanerges1996/Boilerplates/blob/main/RabbbitMq/install_erlang.sh
wget https://github.com/Boanerges1996/Boilerplates/blob/main/RabbbitMq/install_rabbitmq.sh
bash install_erlang.sh
bash install_rabbitmq.sh
```


<br/>
<br/>

## Enable the RabbitMQ Management Dashboard (Optional)
```
sudo rabbitmq-plugins enable rabbitmq_management
```
<br/>
<br/>

### **NOTE:** RabbitMQ Management Dashboard runs by default on PORT <b>15672</b>
<br>

- ## If running from local machine then RabbitMQ Management Dashboard will be access via
  - ``` 
    http://localhost:15672
    ```

- - Defualt username is **guest** and passwrd is **guest**.

<br>
<br>

- ## If running from a remote machine then RabbitMQ Management Dashboard will be access via
  - ```
    [protocol(http/https)]://[IP_ADDRESS]:15672
    ```
- - Here we can't use username is **guest** and passwrd is **guest**
- - See the managing users and admins session in other to continue.
- - Make sure your firewalls have allowed the necessary ports.

<br>
<br>

# Managing users and admins

### To be able to login on the network, create an admin user like below:

```
    sudo rabbitmqctl add_user <user_name> <StrongPassword>
    sudo rabbitmqctl set_user_tags  <user_name> administrator # Making the user an administrator
```

<br>
<br>

# RabbitMQ User Management Commands
- **Delete User:**
```
rabbitmqctl delete_user <user_name>
```
- **Change User Password:**
```
rabbitmqctl change_password <user_name> <StrongPassword>
```
- **Create new Virtualhost:**
```
rabbitmqctl add_vhost /<vhost_name>
```
- **List available Virtualhosts:**
```
rabbitmqctl list_vhosts
```
- **Delete a virtualhost:**
```
rabbitmqctl delete_vhost /<vhost_name>
```
- **Grant user permissions for vhost:**
```
rabbitmqctl set_permissions -p /<vhost_name> <user_name> ".*" ".*" ".*"
```
- **List vhost permissions:**
```
rabbitmqctl list_permissions -p /<vhost_name>
```
- **To list user permissions:**
```
rabbitmqctl list_user_permissions <user_name>
```
- **Delete user permissions:**
```
rabbitmqctl clear_permissions -p /<vhost_name> <user_name>
```

# Connection from an external application
```
URL = [amqp/amqps]://<user_name>:<password>@[IP_ADDRESS]/<vhost_name>
URL = [amqp/amqps]://<user_name>:<password>@[IP_ADDRESS]//<vhost_name> # Works on some systems, escape the / twice
```


