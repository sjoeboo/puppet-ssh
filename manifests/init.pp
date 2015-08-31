# == Class: ssh
#
# Full description of class ssh here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'ssh':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Matthew Nicholson <sjoeboo@sjoeboo.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class ssh (
  $service_name                             = $ssh::params::service_name,
  $server_package                           = $ssh::params::server_package,
  $server_config_path                       = $ssh::params::server_config_path,
  $server_config_owner                      = $ssh::params::server_config_owner,
  $server_config_group                      = $ssh::params::server_config_group,
  $server_config_mode                       = $ssh::params::server_config_mode,
  $client_package                           = $ssh::params::client_package,
  $port                                     = $ssh::params::port,
  $addressfamily                            = $ssh::params::addressfamily,
  $listenaddress                            = $ssh::params::listenaddress,
  $protocol                                 = $ssh::params::protocol,
  $host_keys                                = $ssh::params::host_keys,
  $syslogfacility                           = $ssh::params::syslogfacility,
  $server_loglevel                          = $ssh::params::server_loglevel,
  $logingracetime                           = $ssh::params::logingracetime,
  $permitrootlogin                          = $ssh::params::permitrootlogin,
  $strictmodes                              = $ssh::params::strictmodes,
  $maxauthtries                             = $ssh::params::maxauthtries,
  $maxsessions                              = $ssh::params::maxsessions,
  $rsaauthentication                        = $ssh::params::rsaauthentication,
  $publickeyauthentication                  = $ssh::params::publickeyauthentication,
  $authorizedkeysfile                       = $ssh::params::authorizedkeysfile,
  $authorizedprincipalsfile                 = $ssh::params::authorizedprincipalsfile,
  $passwordauthentication                   = $ssh::params::passwordauthentication,
  $challengeresponseauthentication          = $ssh::params::challengeresponseauthentication,
  $kerberosauthentication                   = $ssh::params::kerberosauthentication,
  $kerberosrrlocalpasswd                    = $ssh::params::kerberosrrlocalpasswd,
  $kerberosticketcleanup                    = $ssh::params::kerberosticketcleanup,
  $kerberosgetafstoken                      = $ssh::params::kerberosgetafstoken,
  $kerberosusekuserok                       = $ssh::params::kerberosusekuserok,
  $gssapiauthentication                     = $ssh::params::gssapiauthentication,
  $gssapicleanupcredentials                 = $ssh::params::gssapicleanupcredentials,
  $gssapistrictacceptorcheck                = $ssh::params::gssapistrictacceptorcheck,
  $gssapikeyexchange                        = $ssh::params::gssapikeyexchange,
  $gssapienablek5users                      = $ssh::params::gssapienablek5users,
  $usepam                                   = $ssh::params::usepam,
  $allowagentforwarding                     = $ssh::params::allowagentforwarding,
  $allowtcpforwarding                       = $ssh::params::allowtcpforwarding,
  $gatewayports                             = $ssh::params::gatewayports,
  $x11forwarding                            = $ssh::params::x11forwarding,
  $x11displayoffset                         = $ssh::params::x11displayoffset,
  $x11uselocalhost                          = $ssh::params::x11uselocalhost,
  $permittty                                = $ssh::params::permittty,
  $printmotd                                = $ssh::params::printmotd,
  $printlastlog                             = $ssh::params::printlastlog,
  $tcpkeepalive                             = $ssh::params::tcpkeepalive,
  $uselogin                                 = $ssh::params::uselogin,
  $useprivilegeseparation                   = $ssh::params::useprivilegeseparation,
  $permituserenvironment                    = $ssh::params::permituserenvironment,
  $compression                              = $ssh::params::compression,
  $clientaliveinterval                      = $ssh::params::clientaliveinterval,
  $clientalivecountmax                      = $ssh::params::clientalivecountmax,
  $showpatchlevel                           = $ssh::params::showpatchlevel,
  $usedns                                   = $ssh::params::usedns,
  $pidfile                                  = $ssh::params::pidfile,
  $maxstartups                              = $ssh::params::maxstartups,
  $permittunnel                             = $ssh::params::permittunnel,
  $chrootdirectory                          = $ssh::params::chrootdirectory,
  $versionaddendum                          = $ssh::params::versionaddendum,
  $banner                                   = $ssh::params::banner,
  $subsystems                               = $ssh::params::subsystems,
  $acceptenv                                = $ssh::params::acceptenv,
  $allowusers                               = $ssh::params::allowusers,
  $allwgroups                               = $ssh::params::allwgroups,
  $denyusers                                = $ssh::params::denyusers,
  $denygroups                               = $ssh::params::denygroups
  ){


}
