# This Puppet manifest increases the file limits for the holberton user
file { '/etc/security/limits.conf':
    ensure => file,
    content => template('your_template.erb'),  # or use ensure => present with the content defined inline
}

exec { 'apply-limits':
    command => 'echo "holberton soft nofile 1024" >> /etc/security/limits.conf && echo "holberton hard nofile 2048" >> /etc/security/limits.conf',
    path    => '/usr/bin:/bin',
    refreshonly => true,
}
