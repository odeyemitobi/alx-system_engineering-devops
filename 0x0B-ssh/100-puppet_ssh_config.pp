# Define the path to the SSH configuration file
$ssh_config_path = '/home/ubuntu/.ssh/config'

# Ensure the .ssh directory exists
file { '/home/ubuntu/.ssh':
  ensure => directory,
  owner  => 'ubuntu',
  group  => 'ubuntu',
  mode   => '0700',
}

# Manage the SSH configuration file
file { $ssh_config_path:
  ensure  => present,
  owner   => 'ubuntu',
  group   => 'ubuntu',
  mode    => '0644',
  content => @("EOF")
    # SSH client configuration managed by Puppet

    Host *
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
    | EOF
}