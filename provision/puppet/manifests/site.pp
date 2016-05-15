#simple lamp stack
node default {
  $db_root_password = 'rootpassword'
  $db_name          = 'jokes'
  $db_user          = 'joker'
  $db_password      = 'userpassword'
  $db_host          = '127.0.0.1'
  $grants           = ['ALL']
  $datafile         = '/usr/share/mysql/datafile.csv'
  $create_table     = '/usr/share/mysql/create_table.sql'
  $docroot          = '/var/www/'
  $site_name        = 'jokes'

  class { 'mysql_config':
    db_root_password => $db_root_password,
    db_name          => $db_name,
    db_user          => $db_user,
    db_password      => $db_password,
    db_host          => $db_host,
    grants           => $grants,
    datafile         => $datafile,
    create_table     => $create_table,
  }
  
  class { 'apache_config': 
    docroot   => $docroot,
    site_name => $site_name,
  }

  ->  class { 'php': 
        notify => Class['Apache::Service'],
      }

  ->  class { 'joker': 
        db_name     => $db_name,
        db_user     => $db_user,    
        db_password => $db_password,
        db_host     => $db_host, 
        docroot     => $docroot,
        site_name   => $site_name,
      }
}
