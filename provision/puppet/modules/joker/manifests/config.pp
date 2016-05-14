class joker::config {

  file { '/var/www/html/phpinfo.php':
    ensure => file,
    content => file("${module_name}/phpinfo.php")
  }
}