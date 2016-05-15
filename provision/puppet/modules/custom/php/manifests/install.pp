class php::install {

  package { 'php5-mysqlnd':
    ensure => installed,
  }
}