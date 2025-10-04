#!/bin/bash

# We're using nmcli to display the list of available wifi networks
# The column SSID stands for Service Set Identifier. 

list_wifi_networks()
{
  echo "Here is the list of available wifi in your network"
  nmcli device wifi list # the list of available wifi in your network"
}

connect_to_wifi() 
{
  echo "Enter the name (SSID) of the Wi-Fi-network you want to connect to:"
  read ssid
  
  echo "Enter the password for the Wi-Fi network:"
  read -s password

  # Use nmcli to connect to the specified Wi-Fi network
  nmcli device wifi connect "$ssid" password "$password"
  if [ $? -eq 0 ]; then
    echo "You're now successfully connected to $ssid Wi-Fi"
  else 
    echo "Wrong password. Try again"
  fi 
}

list_wifi_networks

echo "Do you want to connect to a Wi-Fi network? (yes/no)"
read choice

if [ "$choice" = "yes" ]; then 
  connect_to_wifi
else 
  echo "No network connection requested. Exiting."
fi
