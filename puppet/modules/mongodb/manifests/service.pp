class mongodb::service {
    service{ 'mongod':
        enable => false,
        ensure => stopped,
        hasrestart => false,
    }
}
