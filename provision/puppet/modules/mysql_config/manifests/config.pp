class mysql_config::config (
  $db_name,
  $db_user,
  $db_password,
  $db_host,    
  $grants,     
){

  mysql::db { $db_name:
    user     => $db_user,
    password => $db_password,
    host     => $db_host,
    grant    => $grants,
  }
}