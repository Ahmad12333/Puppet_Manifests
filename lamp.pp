#execute 'apt-get update'
exec { 'apt-update':
	command => 'usr/bin/apt-get update',
}


#install apache2 package
package { 'apache2':
	require => Exec['apt-update'],
	ensure => installed,
}

#ensure apache2 service is running
service { 'apache2':
	ensure => running,
}

#install mysql server package
package { 'mysql-server':
	require => Exec['apt-update'],
	ensure => installed,
}

#ensure mysql service is running
service { 'mysql':
	ensure => running,
}
