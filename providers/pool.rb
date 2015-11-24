#
# Cookbook Name:: cerny_ceph
# Provider:: pool
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
#
# rubocop:disable LineLength

def whyrun_supported?
  true
end

use_inline_resources

action :create do
  if @current_resource.exists
    if @current_resource.pg_num.eql?(@new_resource.pg_num)
      Chef::Log.info "#{@new_resource} already exists - nothing to do."
    else
      Chef::Log.info "#{@new_resource} already exists, with different pg_num."
      converge_by("Setting pg_num for #{@new_resource}") do
        set_pg
        sleep(5)
        set_pgp
      end
    end
  else
    converge_by("Creating #{@new_resource}") do
      create_pool
    end
  end
end

action :delete do
  if @current_resource.exists
    converge_by("Deleting #{@new_resource}") do
      delete_pool
    end
  else
    Chef::Log.info "#{@current_resource} does not exist - nothing to do."
  end
end

def load_current_resource
  @current_resource = Chef::Resource::CephPool.new(@new_resource.name)
  @current_resource.name(@new_resource.name)
  @current_resource.exists = pool_exists?(@current_resource.name)
end

def create_pool
  cmd_text = "ceph osd pool create #{new_resource.name} #{new_resource.pg_num}"
  cmd_text << " #{new_resource.create_options}" if new_resource.create_options
  cmd = Mixlib::ShellOut.new(cmd_text)
  cmd.run_command
  cmd.error!
  Chef::Log.debug "Pool created: #{cmd.stderr}"
end

def delete_pool
  cmd_text = "ceph osd pool delete #{new_resource.name}"
  cmd_text << " #{new_resource.name} --yes-i-really-really-mean-it" if
    new_resource.force
  cmd = Mixlib::ShellOut.new(cmd_text)
  cmd.run_command
  cmd.error!
  Chef::Log.debug "Pool deleted: #{cmd.stderr}"
end

def set_pg
  cmd_text = "ceph osd pool set #{new_resource.name} pg_num #{new_resource.pg_num}"
  cmd = Mixlib::ShellOut.new(cmd_text)
  cmd.run_command
  cmd.error!
  Chef::Log.debug "Placement Groups Set: #{cmd.stderr}"
end

def set_pgp
  cmd_text = "ceph osd pool set #{new_resource.name} pgp_num #{new_resource.pg_num}"
  cmd = Mixlib::ShellOut.new(cmd_text)
  cmd.run_command
  cmd.error!
  Chef::Log.debug "Placement Groups Set: #{cmd.stderr}"
end

def pool_exists?(name)
  cmd = Mixlib::ShellOut.new("ceph osd pool get #{name} pg_num")
  cmd.run_command
  cmd.error!
  @current_resource.pg_num = cmd.stdout.split(' ')[1]
  Chef::Log.debug "Pool exists: #{cmd.stdout}"
  true
rescue
  Chef::Log.debug "Pool doesn't seem to exist: #{cmd.stderr}"
  false
end

# rubocop:enable LineLength
