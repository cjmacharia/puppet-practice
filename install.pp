class ntp::install(
String $package_name   = $ntp::package_name,
String $package_ensure = $npt::package_ensure,
){
package { $package_name:
  ensure => package_ensure,
}
}
