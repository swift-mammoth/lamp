class apache_config::install {
  
  class { 'apache': 
    mpm_module => 'prefork',
  }
}