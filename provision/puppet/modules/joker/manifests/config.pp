class joker::config (
  $db_name, 
  $db_user,    
  $db_password,
  $db_host,
){

  file { '/var/www/html/phpinfo.php':
    ensure => file,
    content => file("${module_name}/phpinfo.php")
  }

  file { '/var/www/html/index.php':
    ensure => file,
    content => template("${module_name}/index.php.erb")
  }
}