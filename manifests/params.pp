class ssh::params {
  case $::osfamily {
    'Debian': {
      $service_name = 'ssh'
    }
    'RedHat': {
      #All defaults from RHEL7 sshd_config
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
      $server_loglevel                                 = 'INFO'
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
      $usepam                                   = 'yes'
      $allowagentforwarding                     = 'yes'
      $allowtcpforwarding                       = 'yes'
      $gatewayports                             = 'no'
      $x11forwarding                            = 'yes'
      $x11displayoffset                         = 10
      $x11uselocalhost                          = 'yes'
      $permittty                                = 'yes'
      $printmotd                                = 'yes'
      $printlastlog                             = 'yes'
      $tcpkeepalive                             = 'yes'
      $uselogin                                 = 'no'
      $useprivilegeseparation                   = 'sandbox'
      $permituserenvironment                    = 'no'
      $compression                              = 'delayed'
      $clientaliveinterval                      = 0
      $clientalivecountmax                      = 3
      $showpatchlevel                           = 'no'
      $usedns                                   = 'yes'
      $pidfile                                  = '/var/run/sshd.pid'
      $maxstartups                              = '10:30:100'
      $permittunnel                             = 'no'
      $chrootdirectory                          = 'none'
      $versionaddendum                          = 'none'
      $banner                                   = 'none'
      $subsystems                               = {'sftp' => '/usr/libexec/openssh/sftp-server' }
      $acceptenv                                = ['LANG','LC_CTYPE','LC_NUMERIC','LC_TIME','LC_COLLATE','LC_MONETARY','LC_MESSAGES','LC_PAPER','LC_NAME','LC_ADDRESS','LC_TELEPHONE','LC_MEASUREMENT','LC_IDENTIFICATION','LC_ALL','LANGUAGE','XMODIFIERS']
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
