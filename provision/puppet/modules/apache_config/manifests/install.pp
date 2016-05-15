class apache_config::install {
  
  class { 'apache':
    default_vhost => false,
    mpm_module    => 'prefork',
  }
}