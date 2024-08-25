#!/usr/bin/env bash
# make changes to config file using puppet

file {'/etc/ssh/ssh_config':
	ensure => 'present',
}

file_line { 'Turn off passwd auth':
  path  => '~/.ssh/config',
  line  => 'PasswordAuthentication no',
  match => '^PasswordAuthentication',
}

file_line { 'Declare identity file':
  path  => '~/.ssh/config',
  line  => "IdentityFile ~/.ssh/school",
  match => '^IdentityFile',
}
