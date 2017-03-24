if  $facts['os']['family'] == 'RedHat' {
  notify {'RedHat':}
} #modern fact
elsif $facts['os']['family'] == 'Debian' {
  notify {'Debian':}
}

else {
  fail {"Your OS, ${facts['os']['family']}, is untested "}
#else $facts['osfamily'] == 'RedHat' {
# notify { 'Red hat': }
#}
