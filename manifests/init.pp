class smartmontools {

    $mail = hiera('smartmontools_mail',"root@${::fqdn}")

    package { 'smartmontools':
        ensure => installed;
    }

    file {
        '/etc/sysconfig/smartmontools':
            ensure  => present,
            owner   => root,
            group   => root,
            mode    => '0644',
            notify  => Service['smartd'],
            content  => template('smartmontools/smartmontools.sysconfig.erb');
    }

    service {
        'smartd':
            ensure     => running,
            enable     => true,
            hasrestart => true,
            require    => [
                File['/etc/sysconfig/smartmontools'],
                Package['smartmontools'],
            ];
    }
}
