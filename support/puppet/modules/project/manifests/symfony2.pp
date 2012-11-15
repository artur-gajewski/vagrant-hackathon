class project::symfony2 {

    # Install / Update the vendors
    exec { "vendorupdate" :
        command => "/usr/bin/php /vagrant/composer.phar install",
        cwd     => "/vagrant/",
        require => [ Package["php"], Package["git"] ],
        timeout => 0,
        tries   => 10,
    }

    # Create our initial db
    exec { "init_db" :
        command => "/usr/bin/php /vagrant/app/console doctrine:schema:create || true",
        require => [ Exec["vendorupdate"], Service["mysql"], Package["php-xml"] ],
    }

}
