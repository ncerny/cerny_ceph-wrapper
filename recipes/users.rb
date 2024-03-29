#
# Cookbook Name:: cerny_ceph
# Recipe:: users
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

group 'ceph'

user 'nathan' do
  shell '/bin/bash'
  group 'ceph'
end

file '/etc/ceph/ceph.client.admin.keyring' do
  user 'root'
  group 'ceph'
  mode '0640'
end
