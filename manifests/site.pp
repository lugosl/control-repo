####################################
#Crear, bloquear y establecer clave a usuarios no roo
####################################
include profile::base
####################################
if $facts['is_virtual'] {
  # Our NTP module is not supported on virtual machines:
  warning('Tried to include class ntp on virtual machine; this node might be misclassified.')
} elsif $facts['os']['name'] == 'Darwin' {
  warning('This NTP module does not yet work on our Mac laptops.')
} else {
  # Normal node, include the class.
  include ntp
}
####################################

case $facts['os']['name'] {
  'Solaris':           { include role::solaris } # Apply the solaris class
  'RedHat', 'CentOS':  { include role::redhat  } # Apply the redhat class
  /^(Debian|Ubuntu)$/: { include role::debian  } # Apply the debian class
  default:             { include role::generic } # Apply the generic class
}
