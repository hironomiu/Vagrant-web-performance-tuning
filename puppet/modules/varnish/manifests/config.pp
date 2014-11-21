class varnish::config {
    file { "/etc/sysconfig/varnish":
        owner => "root", group => "root",
        content => template('varnish/varnish'),
        notify => Service['varnish'],
    }
}
