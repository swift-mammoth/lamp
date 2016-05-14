class apache_config (

){

  class { 'apache_config::install': }
  -> class { 'apache_config::config': }

  contain 'apache_config::install'
  contain 'apache_config::config'
}