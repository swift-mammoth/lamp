class apache_config::config (
  $docroot,
  $site_name,
){

  include apache::mod::php

  apache::vhost { $site_name:
    port          => '80',
    docroot       => "${docroot}/${site_name}",
    directories   => [
      { path => "${docroot}/${site_name}", 'DirectoryIndex' => 'index.php' },
    ],
    default_vhost => true,
}

}