default['ceph']['version'] = 'hammer'
default['ceph']['rhel']['stable']['repository'] = 'http://ceph.com/rpm-hammer/el7/x86_64/'
default['ceph']['radosgw']['api_fqdn'] = 'ceph.internal.cerny.cc'
default['ceph']['radosgw']['admin_email'] = 'ncerny@gmail.com'
default['ceph']['radosgw']['rgw_addr'] = '*:80'
default['ceph']['radosgw']['rgw_port'] = false
default['ceph']['radosgw']['apache2']['packages'] = ['mod_proxy_fcgi']
