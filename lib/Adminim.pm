package Adminim;

use strict;
use warnings;

use base 'Mojolicious';

# This method will run once at server start
sub startup {
    my $self = shift;

    my $config = $self->plugin('json_config');

    # Routes
    my $r = $self->routes;
    $r->namespace('FastNotes::Controller');

    # Normal route to controller
    $r->route('/welcome')->to('example#welcome', id => 1);
}

1;
