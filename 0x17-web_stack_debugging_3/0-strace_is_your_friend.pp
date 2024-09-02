#Using strace, find out why Apache is returning a 500 error. Once you find the issue, fix it and then automate it using Puppet (instead of using Bash as you were previously doing)
exec { 'fix-wordpress':
  command => 'chmod -R 755 /var/www/html/wp-content/themes/twentyseventeen',
  path    => '/bin',
}
