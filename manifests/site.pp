####################################
#Crear, bloquear y establecer clave a usuarios no roo
####################################
node default {
  accounts::user { 'dan': }
}
accounts::user { 'morgan':
  comment => 'Bad Person',
  locked  => true
}
user { 'bob': 
  ensure   => present,
  password => '$1$.4YEDECx$WItKV5JYZjfVFtmmt3cSn.',
}
####################################

case $facts['os']['name'] {
  'Solaris':           { include role::solaris } # Apply the solaris class
  'RedHat', 'CentOS':  { include role::redhat  } # Apply the redhat class
  /^(Debian|Ubuntu)$/: { include role::debian  } # Apply the debian class
  default:             { include role::generic } # Apply the generic class
}
include ::ssh
include ::firewall
