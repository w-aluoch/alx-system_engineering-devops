# fix request limit at ngix

exec { 'fix--for-nginx':
	command => 'sed -i "s/15/4096/" /etc/default/nginx && sudo service nginx restar',
	path    => '/usr/local/bin/:/bin/'
}

# Restart Nginx
	-> exec { 'nginx-restart':
 	command => 'nginx restart',
	 path    => '/etc/init.d/'
}
