class mongodb::install{
    yumrepo { 'mongodb-repo':
        descr => 'mongodb-repo',
        baseurl => 'http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/',
        enabled    => 1,
        gpgcheck   => 0,
    }

    package{
        [
        'mongodb-org',
        ]:
        ensure => installed,
        require => Yumrepo['mongodb-repo'],
    }
}
