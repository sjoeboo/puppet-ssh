class ssh::params {
  case $::osfamily {
    'Debian': {
      $service_name = 'ssh'
    }
    'RedHat': {
      $service_name         = 'sshd'
      $server_package       = 'openssh-server'
      $server_config_path   = '/etc/ssh/sshd_config'
      $server_config_owner  = 'root'
      $server_config_group  = 'root'
      $server_config_mode   = '0600'
      $client_package       = 'openssh-clients'
      
    }
    default: {
      fail("Unsupported osfamily ${::osfamily}, currently only supports Debian and RedHat")
    }
  }
  case $::operatingsystem {
    'Debian': {
      case $::operatingsystemrelease {
        /^[78].*$/ : {
          $host_keys=['/etc/ssh/ssh_host_rsa_key','/etc/ssh/ssh_host_dsa_key','/etc/ssh/ssh_host_ecdsa_key']
        }
        default : {
          $host_keys=['/etc/ssh/ssh_host_rsa_key','/etc/ssh/ssh_host_dsa_key']
        }
      }
    }
    default : {
      $host_keys=['/etc/ssh/ssh_host_rsa_key','/etc/ssh/ssh_host_dsa_key']
    }
  }

}
