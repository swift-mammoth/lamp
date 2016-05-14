#simple lamp stack
node default {

  class { 'mysql_config': }
  class { 'apache_config': }
  class { 'joker': }
}
