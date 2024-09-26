# This Puppet manifest configures Nginx for better performance
exec { 'fix--for-nginx':
    command => 'sed -i "s/worker_connections.*/worker_connections 4096;/" /etc/nginx/nginx.conf && service nginx restart',
    path    => '/usr/bin:/bin',
}
