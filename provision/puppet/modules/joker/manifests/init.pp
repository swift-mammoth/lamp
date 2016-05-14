class joker (
  $db_name     = 'jokes',
  $db_user     = 'joker',
  $db_password = 'userpassword',
  $db_host     = '127.0.0.1', 
){

  class { 'joker::config': 
    db_name      => $db_name,
    db_user      => $db_user,    
    db_password  => $db_password,
    db_host      => $db_host, 
  }

  contain 'joker::config'
}