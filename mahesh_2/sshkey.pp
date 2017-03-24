#user {'tux':
 # ensure     => 'present',
 # managehome => 'true',
 # groups     => ['sudo','apache','bob'],
 # password   => 'Password01',
 #}
  
  ssh_authorized_key {'tux@centos7':
  user   => 'root',
  type   => 'ssh-rsa',
  key    => 'sdjkjsdlskdslkjdlslkjd',
}
