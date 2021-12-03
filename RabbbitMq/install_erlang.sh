# Erlang programming language was built for concurrency, 
# fault tolerance, and distributed application architectures. 
# OTP (Open Telecom Platform) is a collection of libraries and 
# middleware for Erlang. This guide will show you how you can 
# install and use the latest release of  Erlang/OTP on Ubuntu 22.04|20.04|18.04 LTS.
sudo apt update
sudo apt install software-properties-common apt-transport-https
wget -O- https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | sudo apt-key add -

# add the repository to your Ubuntu 22.04|20.04|18.04 system by running the following commands:
echo "deb https://packages.erlang-solutions.com/ubuntu focal contrib" | sudo tee /etc/apt/sources.list.d/rabbitmq.list

sudo apt update
sudo apt install erlang -y
