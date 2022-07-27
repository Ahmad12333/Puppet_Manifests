
node linux_server1 {



service {'nginx' :
ensure => 'stopped',
enable => 'fasle',
}
}
