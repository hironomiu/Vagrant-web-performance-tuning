class php::install{
     yumrepo { 'hhvm-repo':
        descr => 'hhvm repo',
        baseurl  => 'http://www.hop5.in/yum/el6/',
        gpgkey   => 'http://dl.hhvm.com/conf/hhvm.gpg.key',
        enabled  => 1,
        gpgcheck => 0,
        priority => 1,
    }

    package{
        [
        'hhvm',
        ]:
        provider => 'yum',
        ensure => installed,
        require => Yumrepo['hhvm-repo'],
    }

    yumrepo { 'php-remi':
        descr => 'remi repo',
        mirrorlist => 'http://rpms.famillecollet.com/enterprise/6/remi/mirror',
        enabled    => 1,
        gpgcheck   => 1,
        gpgkey     => 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi',
        require => Package['hhvm'],
    }

    package{
        [
        'php',
        'php-cli',
        'php-pecl-apc',
        'php-pecl-memcached',
        'php-common',
        'php-devel',
        'php-gd',
        'php-pdo',
        'php-pear',
        'php-xml',
        'php-mbstring',
        'php-mysqlnd',
        'php-pecl-zendopcache',
        'php-pecl-xdebug',
        'php-fpm',
        ]:
        provider => 'yum',
        ensure => installed,
        require => Yumrepo['php-remi'],
    }

    yumrepo { 'php-epel':
        descr => 'epel repo',
        mirrorlist => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=$basearch',
        enabled    => 1,
        gpgcheck   => 1,
        gpgkey     => 'https://fedoraproject.org/static/0608B895.txt',
    }

    package{
        [
        'php-mcrypt',
        ]:
        provider => 'yum',
        ensure => installed,
        require => Yumrepo['php-epel'],
    }


}
