class httpd::config{
    file { '/etc/httpd/conf/httpd.conf':
        owner => 'root', group => 'root',
        content => template('httpd/httpd.conf'),
    }
}
