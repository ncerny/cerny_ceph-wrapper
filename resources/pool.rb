#
# Cookbook Name:: cerny_ceph
# Resource:: pool
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

actions :create, :delete
default_action :create

attribute :name, kind_of: String, name_attribute: true

# The total number of placement groups for the pool.
attribute :pg_num, kind_of: Integer, required: true

# Optional arguments for pool creation
attribute :create_options, kind_of: String

# Forces a non-empty pool to be deleted.
attribute :force, kind_of: [TrueClass, FalseClass], default: false

attr_accessor :exists
attr_accessor :pgp_num
