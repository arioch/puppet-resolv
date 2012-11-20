# Puppet Resolv

## Requirements

## Tested on...

* Debian 5 (Lenny)
* Debian 6 (Squeeze)
* CentOS 5
* CentOS 6

## Example usage

### Resolv using default settings

    node /box/ {
      include resolv
    }

### Resolv using custom settings

    node /box/ {
      class { 'resolv':
        resolv_search      => $::fqdn,
        resolv_domain      => $::domain,
        resolv_nameservers => [ '208.67.220.220', '208.67.222.222' ]
    }

