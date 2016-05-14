class mysql_config (
  $db_root_password = 'rootpassword',
  $db_name          = 'jokes',
  $db_user          = 'joker',
  $db_password      = 'userpassword',
  $db_host          = '127.0.0.1', 
  $grants           = ['ALL'],
){

  class { 'mysql_config::install':
    db_root_password => $db_root_password,
  }

  ->  class { 'mysql_config::config': 
        db_name     => $db_name,
        db_user     => $db_user,
        db_password => $db_password,
        db_host     => $db_host,
        grants      => $grants,
      }

  contain 'mysql_config::install'
  contain 'mysql_config::config'
}