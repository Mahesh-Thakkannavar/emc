include stdlib
$admingroups = ['wheel','adm']
notify {"The first group is ${admingroups[0]}":}

#$user = {'useranme' => 'bob', 'userid' => '2011',}
#notify {"The users name is ${user['username']}":}

group {'sub':
 ensure => 'present',
 name   => '$admingroups',
}
user {'bob':
  ensure     => 'present',
  managehome => true,
  groups     => $admingroups,
  password   => pw_hash('Password01','SHA-512','salt'),
}
#group {'$admingroups':
# ensure => 'present',
#}
