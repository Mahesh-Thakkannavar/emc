if  $facts['os']['family'] == 'RedHat' {
    notify {'RedHat':}
    file{'/var/www/html':,

    if $package {'httpd':
      notify { "httpd package is installed":}
      }
      else {
        ensure => 'installed',
        $http_cont = '<h1> Hello to the world of puppet </h1>'
        file { '/var/www/html/index.html':
            ensure      => 'file',
                content => $http_cont,
        }
        service {'httpd':
            ensure => 'running',
        }
      }
    }
  }
}



#}    package {'httpd':
# ensure => 'installed',
#}

#service {'httpd':
#  ensure => 'running',
#}

#$http_cont = '<h1> Hello to the world of puppet </h1>'
#file { '/var/www/html/index.html':
# ensure  => 'file',
  #path    => '/var/www/html/',
  # content => $http_cont,
  #}
