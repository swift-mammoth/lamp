class mysql_config::config (
  $db_name,
  $db_user,
  $db_password,
  $db_host,    
  $grants,
  $datafile,
  $create_table,    
){

  file { $datafile:
    ensure  => file,
    content => file("${module_name}/datafile.csv"),
    group   => 'mysql',
  }

  ->  file { $create_table:
        ensure  => file,
        content => template("${module_name}/create_table.sql.erb"),
      }

  ->  mysql::db { $db_name:
        user     => $db_user,
        password => $db_password,
        host     => $db_host,
        grant    => $grants,
        sql      => $create_table,
      }
}