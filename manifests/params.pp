# Class: resolv::params
#
#
class resolv::params {
  $resolv_search      = $::domain
  $resolv_domain      = $::domain
  $resolv_nameservers = [ '208.67.220.220', '208.67.222.222' ]
  $config_user        = 'root'
  $config_group       = 'root'
}

