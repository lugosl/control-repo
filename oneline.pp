file {'/tmp/cookbook':
ensure => 'file',
}
file_line {'cookbook-hello':
path
=> '/tmp/cookbook',
line
=> 'Hello World!',
require => File['/tmp/cookbook'],
}
