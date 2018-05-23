class ntp::config(
String $config_name      = $npt::config_name,
String $config_file_mode = $npt::config_file_mode,
Array[String] $server    = $ntp::servers,
){
file { "/etc/$config_name":
ensure  => file,
owner   => 0,
group   => 0,
mode    => $config_file_mode,
content => template('$module_name/ntp.conf.erb')
}

}
