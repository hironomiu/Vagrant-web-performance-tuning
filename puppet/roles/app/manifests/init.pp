class app {
    include app::localtime
    include app::lang
    include app::base
    include app::mysql
    include app::mongodb
    include app::db-demouser
    include app::php
    include app::pear
    include app::demogroup
    include app::demouser
    include app::httpd
    include app::nginx
    include app::memcached
    include app::sshd
    include app::iptables
    include app::varnish
}
