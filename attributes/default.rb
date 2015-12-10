default['ceph']['version'] = 'hammer'
default['ceph']['rhel']['stable']['repository'] = 'http://ceph.com/rpm-hammer/el7/x86_64/'

default['ceph']['radosgw']['api_fqdn'] = 'ceph.internal.cerny.cc'
default['ceph']['radosgw']['admin_email'] = 'ncerny@gmail.com'
default['ceph']['radosgw']['rgw_addr'] = '*:80'
default['ceph']['radosgw']['rgw_port'] = false
default['ceph']['radosgw']['webserver_companion'] = 'civetweb'

default['ceph']['config']['global']['public network'] = '172.16.200.0/24'
default['ceph']['config']['global']['cluster network'] = '172.17.200.0/24'
default['ceph']['config']['global']['auth_cluster_required'] = 'cephx'
default['ceph']['config']['global']['auth_service_required'] = 'cephx'
default['ceph']['config']['global']['auth_client_required'] = 'cephx'
default['ceph']['config']['global']['filestore_xattr_use_omap'] = 'true'
default['ceph']['config']['global']['osd_pool_default_size'] = '2'
default['ceph']['config']['osd']['filestore_flush_min'] = '0'
default['ceph']['config']['osd']['filestore_flusher'] = 'false'
default['ceph']['config']['osd']['journal_aio'] = 'true'
default['ceph']['config']['osd']['osd_op_threads'] = '8'
default['ceph']['config']['osd']['filestore_queue_max_bytes'] = '1048576000'
default['ceph']['config']['osd']['filestore_queue_committing_max_bytes'] = '1048576000'
default['ceph']['config']['osd']['journal_max_write_bytes'] = '1048576000'
default['ceph']['config']['osd']['journal_queue_max_bytes'] = '1048576000'
default['ceph']['config']['osd']['ms_dispatch_throttle_bytes'] = '1048576000'
default['ceph']['config']['osd']['objecter_infilght_op_bytes'] = '1048576000'
default['ceph']['config']['osd']['filestore_queue_max_ops'] = '5000'
default['ceph']['config']['osd']['filestore_queue_committing_max_ops'] = '5000'
default['ceph']['config']['osd']['journal_max_write_entries'] = '1000'
default['ceph']['config']['osd']['journal_queue_max_ops'] = '5000'
default['ceph']['config']['osd']['objecter_inflight_ops'] = '8192'
