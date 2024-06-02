#!/bin/bash

read -p "Enter Environment TLA/Name for RP1, RT2, RRA (comma separated): " env_tla_names
read -p "Enter True Cfg – Config Name: " true_cfg
read -p "Enter DB Version (ctc_data): " db_version
read -p "Enter WS Version (ctcws): " ws_version
read -p "Enter TMA Version: " tma_version
read -p "Enter P R – Prefix Letter for RP1, RT2, RRA (comma separated): " prefix_letters
read -p "Enter Initial Port Number for RP1, RT2, RRA (comma separated): " initial_ports
read -p "Enter IP 1 (Subnet): " ip1_subnet
read -p "Enter IP 2 (Subnet): " ip2_subnet
read -p "Enter IP Node: " ip_node
read -p "Enter HPNS Host: " hpns_host
read -p "Enter Environment Disk for RP1, RT2, RRA (comma separated): " env_disks

# Split comma separated inputs
IFS=',' read -r rp1_name rt2_name rra_name <<< "$env_tla_names"
IFS=',' read -r rp1_prefix rt2_prefix rra_prefix <<< "$prefix_letters"
IFS=',' read -r rp1_port rt2_port rra_port <<< "$initial_ports"
IFS=',' read -r rp1_disk rt2_disk rra_disk <<< "$env_disks"

# Create configuration file
cat <<EOL > config.txt
Environment TLA/Name:
  RP1: $rp1_name
  RT2: $rt2_name
  RRA: $rra_name
True Cfg – Config Name: $true_cfg
DB Version (ctc_data): $db_version
WS Version (ctcws): $ws_version
TMA Version: $tma_version
P R – Prefix Letter:
  RP1: $rp1_prefix
  RT2: $rt2_prefix
  RRA: $rra_prefix
Initial Port Number:
  RP1: $rp1_port
  RT2: $rt2_port
  RRA: $rra_port
IP 1 (Subnet): $ip1_subnet
IP 2 (Subnet): $ip2_subnet
IP Node: $ip_node
HPNS Host: $hpns_host
Environment Disk:
  RP1: $rp1_disk
  RT2: $rt2_disk
  RRA: $rra_disk
EOL

echo "Configuration saved to config.txt"
