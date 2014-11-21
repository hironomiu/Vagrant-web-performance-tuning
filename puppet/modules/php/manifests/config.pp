class php::config {
    file { '/etc/php.ini':
        owner => 'root', group => 'root',
        content => template('php/php.ini'),
    }
    file { '/etc/php.d/apc.ini':
        owner => 'root', group => 'root',
        content => template('php/apc.ini'),
    }
    file { '/etc/php.d/opcache.ini':
        owner => 'root', group => 'root',
        content => template('php/opcache.ini'),
    }
}
