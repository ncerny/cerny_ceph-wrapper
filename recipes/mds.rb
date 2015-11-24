#
# Cookbook Name:: cerny_ceph
# Recipe:: mds
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

include_recipe 'cerny_ceph::_firewall'

cerny_ceph_pool 'cephfs_data' do
  pg_num 768
end

cerny_ceph_pool 'cephfs_metadata' do
  pg_num 128
end

execute 'ceph fs new cephfs cephfs_metadata cephfs_data' do
  only_if { 'ceph fs ls | grep "No filesystems enabled"' }
end

include_recipe 'ceph::mds'
