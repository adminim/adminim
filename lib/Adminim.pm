package Adminim;

use strict;
use warnings;

use base 'Mojolicious';

# This method will run once at server start
sub startup {
    my $self = shift;

    # get config
    my $config = $self->plugin('json_config', { 
            file        => $self->home->rel_file('etc/adminim.conf'), 
            stash_key   => 'conf'
        } );

    $ENV{MOJO_HOME} ||= $config->{home_path};

    $self->secret( $config->{secret} );

    # Plugins
    $self->plugin( charset  => { charset => 'utf8' } );
    $self->plugin( 'i18n' );

    # Routes
    my $r = $self->routes;
    $r->namespace('Adminim::Controller');

    # Normal route to controller
    $r->route('/welcome')->to('example#welcome', id => 1);
}

1;

