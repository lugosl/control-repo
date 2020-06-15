####################################
    file { '/home/test': # Resource type file

            ensure => 'directory', # Create a directory

            owner => 'root', # Ownership

            group => 'root', # Group Name

            mode => '0755', # Directory permissions

         }
####################################
