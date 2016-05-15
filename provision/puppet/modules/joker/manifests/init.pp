class joker (
  $db_name     = 'my_db',
  $db_user     = 'db_user',
  $db_password = 'changme',
  $db_host     = '127.0.0.1',
  $docroot     = '/var/www/html',
  $site_name   = 'jokes',
){

  class { 'joker::config': 
    db_name     => $db_name,
    db_user     => $db_user,    
    db_password => $db_password,
    db_host     => $db_host, 
    docroot     => $docroot,
    site_name   => $site_name,
  }

  contain 'joker::config'
}