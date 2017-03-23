package {'httpd':
  ensure => 'installed',
}

service {'httpd':
  ensure => 'running',
}

$http_cont = '<h1> Hello to the world of puppet </h1>'
file { '/var/www/html/index.html':
  ensure  => 'file',
  content => $http_cont,
}
