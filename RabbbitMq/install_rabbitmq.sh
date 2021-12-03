#!/bin/sh
curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.deb.sh | sudo bash

sudo apt update

sudo apt install rabbitmq-server -y

systemctl status  rabbitmq-server.service

systemctl is-enabled rabbitmq-server.service 

sudo rabbitmq-plugins enable rabbitmq_management