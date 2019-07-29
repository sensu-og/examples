############################################
#           Sensu Go Standalone            #
############################################
#              !!!WARNING!!!               #
#         NOT FOR PRODUCTION USE           #
############################################

#!/bin/sh
# Set up the IP address variable for output at the end of the script
IPADDR=$(/sbin/ip -o -4 addr list enp0s8  | awk '{print $4}' | cut -d/ -f1)

# Install Sensu backend, agent, and sensuctl
curl -s https://packagecloud.io/install/repositories/sensu/stable/script.rpm.sh | sudo bash
sudo yum install sensu-go-backend sensu-go-agent sensu-go-cli -y

# Download and copy example configuration files from the docs
sudo curl -L https://docs.sensu.io/sensu-go/latest/files/agent.yml -o agent.yml
sudo cp agent.yml /etc/sensu/agent.yml
sudo curl -L https://docs.sensu.io/sensu-go/latest/files/backend.yml -o backend.yml
sudo cp backend.yml /etc/sensu/backend.yml

# Start Sensu services
sudo systemctl start sensu-backend
sudo systemctl start sensu-agent

# Configure sensuctl
sleep 3
sudo -u vagrant sensuctl configure -n  --username "admin" --password 'P@ssw0rd!' --url "http://127.0.0.1:8080"  

echo -e "=========================
💚 Sensu is now up and running! 💚
💻 Access the dashboard at $IPADDR:3000
=========================" 
