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
default['ceph']['config']['osd']['osd_disk_threads'] = '8'
default['ceph']['config']['osd']['filestore_queue_max_bytes'] = '1048576000'
default['ceph']['config']['osd']['filestore_queue_committing_max_bytes'] = '1048576000'
default['ceph']['config']['osd']['journal_max_write_bytes'] = '1048576000'
default['ceph']['config']['osd']['journal_queue_max_bytes'] = '1048576000'

# default['ceph']['config']['osd']['filestore_queue_max_ops'] = '5000'
default['ceph']['config']['osd']['filestore_queue_committing_max_ops'] = '5000'
default['ceph']['config']['osd']['journal_max_write_entries'] = '1000'
# default['ceph']['config']['osd']['journal_queue_max_ops'] = '5000'
default['ceph']['config']['osd']['journal block align'] = 'true'
# default['ceph']['config']['osd']['filestore max sync interval'] = '30'
# default['ceph']['config']['osd']['objecter_inflight_ops'] = '8192'

default['ceph']['config']['global']['ms_dispatch_throttle_bytes'] = '1048576000'
default['ceph']['config']['global']['objecter_infilght_op_bytes'] = '1048576000'
default['ceph']['config']['global']['objecter_inflight_ops'] = '10240'
default['ceph']['config']['global']['throttler_perf_counter'] = 'false'
default['ceph']['config']['global']['ms_crc_data'] = 'false'
default['ceph']['config']['global']['ms_crc_header'] = 'false'
default['ceph']['config']['osd']['filestore_fd_cache_shards'] = '32'
default['ceph']['config']['osd']['filestore_fd_cache_size'] = '64'
default['ceph']['config']['osd']['filestore_max_inline_xattr_size'] = '0'
default['ceph']['config']['osd']['filestore_max_inline_xattr_size_xfs'] = '0'
default['ceph']['config']['osd']['filestore_max_inline_xattr_size_btrfs'] = '0'
default['ceph']['config']['osd']['filestore_max_sync_interval'] = '10'
default['ceph']['config']['osd']['filestore_omap_header_cache_size'] = '409600'
default['ceph']['config']['osd']['filestore_queue_max_ops'] = '500'
default['ceph']['config']['osd']['journal_queue_max_ops'] = '3000'
default['ceph']['config']['osd']['osd_op_num_shards'] = '10'
default['ceph']['config']['osd']['osd_enable_op_tracker'] = 'false'
default['ceph']['config']['osd']['filestore_wbthrottle_enable'] = 'false'

default['ceph']['config']['global']['debug_lockdep'] = '0/0'
default['ceph']['config']['global']['debug_context'] = '0/0'
default['ceph']['config']['global']['debug_crush'] = '0/0'
default['ceph']['config']['global']['debug_mds'] = '0/0'
default['ceph']['config']['global']['debug_mds_balancer'] = '0/0'
default['ceph']['config']['global']['debug_mds_locker'] = '0/0'
default['ceph']['config']['global']['debug_mds_log'] = '0/0'
default['ceph']['config']['global']['debug_mds_log_expire'] = '0/0'
default['ceph']['config']['global']['debug_mds_migrator'] = '0/0'
default['ceph']['config']['global']['debug_buffer'] = '0/0'
default['ceph']['config']['global']['debug_timer'] = '0/0'
default['ceph']['config']['global']['debug_filer'] = '0/0'
default['ceph']['config']['global']['debug_objecter'] = '0/0'
default['ceph']['config']['global']['debug_rados'] = '0/0'
default['ceph']['config']['global']['debug_rbd'] = '0/0'
default['ceph']['config']['global']['debug_journaler'] = '0/0'
default['ceph']['config']['global']['debug_objectcacher'] = '0/0'
default['ceph']['config']['global']['debug_client'] = '0/0'
default['ceph']['config']['global']['debug_osd'] = '0/0'
default['ceph']['config']['global']['debug_optracker'] = '0/0'
default['ceph']['config']['global']['debug_objclass'] = '0/0'
default['ceph']['config']['global']['debug_filestore'] = '0/0'
default['ceph']['config']['global']['debug_journal'] = '0/0'
default['ceph']['config']['global']['debug_ms'] = '0/0'
default['ceph']['config']['global']['debug_mon'] = '0/0'
default['ceph']['config']['global']['debug_monc'] = '0/0'
default['ceph']['config']['global']['debug_paxos'] = '0/0'
default['ceph']['config']['global']['debug_tp'] = '0/0'
default['ceph']['config']['global']['debug_auth'] = '0/0'
default['ceph']['config']['global']['debug_finisher'] = '0/0'
default['ceph']['config']['global']['debug_heartbeatmap'] = '0/0'
default['ceph']['config']['global']['debug_perfcounter'] = '0/0'
default['ceph']['config']['global']['debug_rgw'] = '0/0'
default['ceph']['config']['global']['debug_hadoop'] = '0/0'
default['ceph']['config']['global']['debug_asok'] = '0/0'
default['ceph']['config']['global']['debug_throttle'] = '0/0'
