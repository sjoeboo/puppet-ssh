class ssh::params {
  case $::osfamily {
    'Debian': {
      $service_name = 'ssh'
    }
    'RedHat': {
      $service_name                             = 'sshd'
      $server_package                           = 'openssh-server'
      $server_config_path                       = '/etc/ssh/sshd_config'
      $server_config_owner                      = 'root'
      $server_config_group                      = 'root'
      $server_config_mode                       = '0600'
      $client_package                           = 'openssh-clients'
      $port                                     = 22
      $addressfamily                            = nil
      $listenaddress                            = []
      $protocol                                 = nil
      $host_keys                                = ['/etc/ssh/ssh_host_rsa_key','/etc/ssh/ssh_host_ecdsa_key','/etc/ssh/ssh_host_ed25519_key']
      $syslogfacility                           = 'AUTHPRIV'
      $loglevel                                 = 'INFO'
      $logingracetime                           = '2m'
      $permitrootlogin                          = 'yes'
      $strictmodes                              = 'yes'
      $maxauthtries                             = 6
      $maxsessions                              = 10
      $rsaauthentication                        = 'yes'
      $publickeyauthentication                  = 'yes'
      $authorizedkeysfile                       = '.ssh/authorized_keys'
      $authorizedprincipalsfile                 = false
      $passwordauthentication                   = 'yes'
      $challengeresponseauthentication          = 'yes'
      $kerberosauthentication                   = 'no'
      $kerberosrrlocalpasswd                    = 'yes'
      $kerberosticketcleanup                    = 'yes'
      $kerberosgetafstoken                      = 'no'
      $kerberosusekuserok                       = 'yes'
      $gssapiauthentication                     = 'yes'
      $gssapicleanupcredentials                 = 'no'
      $gssapistrictacceptorcheck                = 'yes'
      $gssapikeyexchange                        = 'no'
      $gssapienablek5users                      = 'no'
      $allowusers                               = []
      $allwgroups                               = []
      $denyusers                                = []
      $denygroups                               = []

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
