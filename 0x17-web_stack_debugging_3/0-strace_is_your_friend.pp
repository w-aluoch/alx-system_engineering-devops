#puppet manifest to fix a bug in wp-settings.php

	exec { 'fix the .php extention issue:'
	command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
 	 path    => '/usr/local/bin/:/bin/'
}
