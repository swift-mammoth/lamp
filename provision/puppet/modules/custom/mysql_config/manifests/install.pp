class mysql_config::install (
  $db_root_password,
){
  
  class { '::mysql::server':
    root_password => $db_root_password,
  }
}