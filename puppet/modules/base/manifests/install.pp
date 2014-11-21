class base::install{
    yumrepo { 'base-remi':
        descr => 'remi repo',
        mirrorlist => 'http://rpms.famillecollet.com/enterprise/6/remi/mirror',
        enabled    => 1,
        gpgcheck   => 1,
        gpgkey     => 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi',
    }

    package{
        [
        'openssh-clients',
        'wget',
        'screen',
        'unzip',
        'make',
        'git',
        'dstat',
        'sysstat',
        'perf',
        'siege',
        ]:
        ensure => installed,
        require => Yumrepo['base-remi'],
    }
}
