class mysql_config (
  $db_root_password = 'changeme',
  $db_name          = 'my_db',
  $db_user          = 'user',
  $db_password      = 'changeme',
  $db_host          = '127.0.0.1', 
  $grants           = ['ALL'],
  $datafile         = '/tmp/datafile.csv',
  $create_table     = '/tmp/create_table.sql',
){

  class { 'mysql_config::install':
    db_root_password => $db_root_password,
  }

  ->  class { 'mysql_config::config': 
        db_name      => $db_name,
        db_user      => $db_user,
        db_password  => $db_password,
        db_host      => $db_host,
        grants       => $grants,
        datafile     => $datafile,
        create_table => $create_table
      }

  contain 'mysql_config::install'
  contain 'mysql_config::config'
}