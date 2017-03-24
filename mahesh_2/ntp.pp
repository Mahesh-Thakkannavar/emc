$ntp_service = 'ntpd'
package { 'ntp':
  ensure => 'installed', #'absent','purged','latest','4.1'
  #name  => 'ntp', #not use here as we make use of title
  }

service {'$ntp_service':
  ensure => 'running', #'stopped',
  enable => 'true',
}

notify {"The ${ntp_service} is up and running":}

$ntp_conf = '#Managed by puppet
server 192.168.0.3 iburst
driftfile /var/lib/ntp/drift'
file {'/etc/ntp.conf':
  ensure  => 'file',
  content => $ntp_conf,
}
