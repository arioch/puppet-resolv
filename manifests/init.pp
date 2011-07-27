# Class: resolv
#
# This class manages /etc/resolv.conf
#
# Parameters:
#
# Actions:
#  - Manage /etc/resolv.conf
#
# Requires:
#
# Sample Usage:
#
#   node host.fqdn {
#       $resolv_search      = 'company.tld'
#       $resolv_domain      = 'company.tld'
#       $resolv_nameservers = [ '208.67.220.220', '208.67.222.222' ]
#       include resolv
#   }
#
class resolv (
  $resolv_search      = $resolv::params::resolv_search,
  $resolv_domain      = $resolv::params::resolv_domain,
  $resolv_nameservers = $resolv::params::resolv_nameservers,
  $config_user        = $resolv::params::config_user,
  $config_group       = $resolv::params::config_group
) inherits resolv::params {

  file { '/etc/resolv.conf':
      mode    => '0644',
      owner   => root,
      group   => root,
      content => template ( 'resolv/resolv.conf.erb' ),
  }

}

