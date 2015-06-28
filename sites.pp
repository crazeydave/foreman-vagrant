node 'haproxy.testing' {
  class { 'haproxy': }
  haproxy::listen { 'puppet00':
    collect_exported => false,
    ipaddress        => $::ipaddress,
    ports            => '8140',
  }
  haproxy::balancermember { 'node01':
    listening_service => 'puppet00',
    server_names      => 'node01.testing',
    ipaddresses       => '192.168.35.121',
    ports             => '8140',
    options           => 'check',
  }
  haproxy::balancermember { 'node02':
    listening_service => 'puppet00',
    server_names      => 'node02.testing',
    ipaddresses       => '192.168.35.122',
    ports             => '8140',
    options           => 'check',
  }
}