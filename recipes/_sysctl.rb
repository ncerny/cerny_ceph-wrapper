#
# Cookbook Name:: cerny_ceph
# Recipe:: _sysctl
#
# Copyright 2015 Nathan Cerny
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include_recipe 'sysctl'

sysctl_param 'net.ipv4.tcp_congestion_control' do
  value 'htcp'
end
sysctl_param 'net.ipv4.tcp_mtu_probing' do
  value '1'
end
sysctl_param 'net.ipv4.tcp_slow_start_after_idle' do
  value '0'
end
sysctl_param 'net.ipv4.tcp_low_latency' do
  value '1'
end

# From https://easyengine.io/tutorials/linux/sysctl-conf/

### IMPROVE SYSTEM MEMORY MANAGEMENT ###
# Increase size of file handles and inode cache
sysctl_param 'fs.file-max' do
  value '2097152'
end

# Do less swapping
sysctl_param 'vm.swappiness' do
  value '10'
end
sysctl_param 'vm.dirty_ratio' do
  value '60'
end
sysctl_param 'vm.dirty_background_ratio' do
  value '2'
end

### GENERAL NETWORK SECURITY OPTIONS ###
# Number of times SYNACKs for passive TCP connection.
sysctl_param 'net.ipv4.tcp_synack_retries' do
  value '2'
end

# Allowed local port range
# net.ipv4.ip_local_port_range = 2000 65535

# Protect Against TCP Time-Wait
sysctl_param 'net.ipv4.tcp_rfc1337' do
  value '1'
end

# Decrease the time default value for tcp_fin_timeout connection
sysctl_param 'net.ipv4.tcp_fin_timeout' do
  value '15'
end

# Decrease the time default value for connections to keep alive
sysctl_param 'net.ipv4.tcp_keepalive_time' do
  value '300'
end
sysctl_param 'net.ipv4.tcp_keepalive_probes' do
  value '5'
end
sysctl_param 'net.ipv4.tcp_keepalive_intvl' do
  value '15'
end

### TUNING NETWORK PERFORMANCE ###
# Default Socket Receive Buffer
sysctl_param 'net.core.rmem_default' do
  value '31457280'
end

# Maximum Socket Receive Buffer
sysctl_param 'net.core.rmem_max' do
  value '12582912'
end

# Default Socket Send Buffer
sysctl_param 'net.core.wmem_default' do
  value '31457280'
end

# Maximum Socket Send Buffer
sysctl_param 'net.core.wmem_max' do
  value '12582912'
end

# Increase number of incoming connections
sysctl_param 'net.core.somaxconn' do
  value '4096'
end

# Increase number of incoming connections backlog
sysctl_param 'net.core.netdev_max_backlog' do
  value '65536'
end

# Increase the maximum amount of option memory buffers
sysctl_param 'net.core.optmem_max' do
  value '25165824'
end

# Increase the maximum total buffer-space allocatable
# This is measured in units of pages (4096 bytes)
sysctl_param 'net.ipv4.tcp_mem' do
  value '65536 131072 262144'
end
sysctl_param 'net.ipv4.udp_mem' do
  value '65536 131072 262144'
end

# Increase the read-buffer space allocatable
sysctl_param 'net.ipv4.tcp_rmem' do
  value '8192 87380 16777216'
end
sysctl_param 'net.ipv4.udp_rmem_min' do
  value '16384'
end

# Increase the write-buffer-space allocatable
sysctl_param 'net.ipv4.tcp_wmem' do
  value '8192 65536 16777216'
end
sysctl_param 'net.ipv4.udp_wmem_min' do
  value '16384'
end

# Increase the tcp-time-wait buckets pool size to prevent simple DOS attacks
sysctl_param 'net.ipv4.tcp_max_tw_buckets' do
  value '1440000'
end
sysctl_param 'net.ipv4.tcp_tw_recycle' do
  value '1'
end
sysctl_param 'net.ipv4.tcp_tw_reuse' do
  value '1'
end
