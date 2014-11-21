class nginx::install{
    include demouser::config
    Class['demouser::config'] -> Class['nginx::install']
    yumrepo { 'nginx':
        descr => 'nginx yum repo',
        baseurl => 'http://nginx.org/packages/centos/6/$basearch/',
        enabled    => 1,
        gpgcheck   => 0,
    }

    package{
        'nginx':
        ensure => installed,
        require => Yumrepo['nginx'],
    }
}
