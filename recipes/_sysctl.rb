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

# sysctl_param 'net.core.netdev_max_backlog' { value '250000' }
# sysctl_param 'net.core.rmem_default' { value '8738000' }
# sysctl_param 'net.core.wmem_default' { value '8738000' }
# sysctl_param 'net.core.optmem_max' { value '67108864' }
# sysctl_param 'net.core.somaxconn' { value '16384' }
# sysctl_param 'net.ipv4.tcp_rmem' { value '1024000 8738000 67108864' }
# sysctl_param 'net.ipv4.tcp_wmem' { value '1024000 8738000 67108864' }
# sysctl_param 'net.ipv4.tcp_mem' { value '1024000 8738000 67108864' }
# sysctl_param 'net.ipv4.tcp_max_syn_backlog' { value '150000' }
# sysctl_param 'net.ipv4.tcp_congestion_control' { value 'htcp' }
# sysctl_param 'net.ipv4.tcp_mtu_probing' { value '1' }
# sysctl_param 'net.ipv4.tcp_max_tw_buckets' { value '2000000' }
# sysctl_param 'net.ipv4.tcp_slow_start_after_idle' { value '0' }
# sysctl_param 'net.ipv4.tcp_low_latency' { value '1' }
# sysctl_param 'net.ipv4.tcp_moderate_rcvbuf' { value '0' }
# sysctl_param 'net.ipv4.tcp_max_syn_backlog' { value '252144' }
# sysctl_param 'net.ipv4.tcp_max_tw_buckets' { value '2000000' }
# sysctl_param 'net.ipv4.tcp_tw_recycle' { value '1' }
# sysctl_param 'net.ipv4.tcp_tw_reuse' { value '1' }
# sysctl_param 'net.ipv4.tcp_fin_timeout' { value '10' }

# From https://easyengine.io/tutorials/linux/sysctl-conf/

### IMPROVE SYSTEM MEMORY MANAGEMENT ###
# Increase size of file handles and inode cache
sysctl_param 'fs.file-max' { value '2097152' }

# Do less swapping
sysctl_param 'vm.swappiness' { value '10' }
sysctl_param 'vm.dirty_ratio' { value '60' }
sysctl_param 'vm.dirty_background_ratio' { value '2' }

### GENERAL NETWORK SECURITY OPTIONS ###
# Number of times SYNACKs for passive TCP connection.
sysctl_param 'net.ipv4.tcp_synack_retries' { value '2' }

# Allowed local port range
# net.ipv4.ip_local_port_range = 2000 65535

# Protect Against TCP Time-Wait
sysctl_param 'net.ipv4.tcp_rfc1337' { value '1' }

# Decrease the time default value for tcp_fin_timeout connection
sysctl_param 'net.ipv4.tcp_fin_timeout' { value '15' }

# Decrease the time default value for connections to keep alive
sysctl_param 'net.ipv4.tcp_keepalive_time' { value '300' }
sysctl_param 'net.ipv4.tcp_keepalive_probes' { value '5' }
sysctl_param 'net.ipv4.tcp_keepalive_intvl' { value '15' }

### TUNING NETWORK PERFORMANCE ###
# Default Socket Receive Buffer
sysctl_param 'net.core.rmem_default' { value '31457280' }

# Maximum Socket Receive Buffer
sysctl_param 'net.core.rmem_max' { value '12582912' }

# Default Socket Send Buffer
sysctl_param 'net.core.wmem_default' { value '31457280' }

# Maximum Socket Send Buffer
sysctl_param 'net.core.wmem_max' { value '12582912' }

# Increase number of incoming connections
sysctl_param 'net.core.somaxconn' { value '4096' }

# Increase number of incoming connections backlog
sysctl_param 'net.core.netdev_max_backlog' { value '65536' }

# Increase the maximum amount of option memory buffers
sysctl_param 'net.core.optmem_max' { value '25165824' }

# Increase the maximum total buffer-space allocatable
# This is measured in units of pages (4096 bytes)
sysctl_param 'net.ipv4.tcp_mem' { value '65536 131072 262144' }
sysctl_param 'net.ipv4.udp_mem' { value '65536 131072 262144' }

# Increase the read-buffer space allocatable
sysctl_param 'net.ipv4.tcp_rmem' { value '8192 87380 16777216' }
sysctl_param 'net.ipv4.udp_rmem_min' { value '16384' }

# Increase the write-buffer-space allocatable
sysctl_param 'net.ipv4.tcp_wmem' { value '8192 65536 16777216' }
sysctl_param 'net.ipv4.udp_wmem_min' { value '16384' }

# Increase the tcp-time-wait buckets pool size to prevent simple DOS attacks
sysctl_param 'net.ipv4.tcp_max_tw_buckets' { value '1440000' }
sysctl_param 'net.ipv4.tcp_tw_recycle' { value '1' }
sysctl_param 'net.ipv4.tcp_tw_reuse' { value '1' }
