include stdlib

user {'bob':
  ensure     => 'present',
  managehome => true,
  groups     => ['sudo','apache', 'users'],
  password   => pw_hash('Password01','SHA-512','salt'),
}

group {'sudo':
  ensure => 'present',
}
