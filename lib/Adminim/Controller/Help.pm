package Adminim::Controller::Help;

use strict;
use warnings;

use base 'Mojolicious::Controller';

sub index {
    my $self = shift;
    my $page = $self->param('page');
    $self->stash(
            page => $page,
            menu => 'help',
        );
}

1;

__END__


