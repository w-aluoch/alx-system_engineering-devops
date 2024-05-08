# Configuration with puppet

exec {'Puppet Configuration':
  path    => '/usr/bin:/bin',
  command => 'echo -e "Host 34.203.77.57\n	IdentityFile ~/.ssh/school\n	PasswordAuthentication no" >> /etc/ssh/ssh_config',
}
