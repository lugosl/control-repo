class profile::base {
  notice("try to run this script with -v and -d to see difference between log levels")
  #the base profile should include component modules that will be on all nodes
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
user { 'lugosl':
  ensure   => present,
  password => '$1$.4YEDECx$WItKV5JYZjfVFtmmt3cSn.',
}

####################################
include ::apache
include ::ntp
include ::ssh
include ::firewall
}
######################################################
