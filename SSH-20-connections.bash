#!/bin/bash

# Loop through the range of IP addresses and open SSH connections
for i in {1..20}
do
  # Construct the IP address
  ip="192.168.100.$i"
  
  # Attempt to SSH into the VM with a timeout of 5 seconds
  ssh -o ConnectTimeout=5 user@$ip
  
  # You can replace 'user' with the actual username for your VMs.
  # You may also need to provide the appropriate SSH key or password.
done
#You should replace 'user' with the actual username for your VMs, and you may need to provide the appropriate SSH key or password depending on your VM setup.

# Make sure you have SSH access permissions set up correctly on your VMs and that your SSH key (if used) is properly configured. Additionally, adjust the script to match your specific requirements and security settings.