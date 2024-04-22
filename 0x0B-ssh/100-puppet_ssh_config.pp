# Configure the SSH client configuration file

file { '/etc/ssh/ssh_config':
  ensure  => present,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => @("EOF")
# SSH client configuration managed by Puppet

Host *
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
    EOF
}