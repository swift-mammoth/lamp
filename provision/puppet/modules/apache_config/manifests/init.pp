class apache_config (
  $docroot   = '/var/www',
  $site_name = 'html',
){

  class { 'apache_config::install': }
  ->  class { 'apache_config::config': 
        docroot   => $docroot,
        site_name => $site_name,
      }

  contain 'apache_config::install'
  contain 'apache_config::config'
}