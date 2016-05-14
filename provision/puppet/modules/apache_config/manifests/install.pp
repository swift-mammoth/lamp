class apache_config::install {

  include apache::mod::php
  
  class { 'apache': 
    mpm_module => 'prefork',
  }
}