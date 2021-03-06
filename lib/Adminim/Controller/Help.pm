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

=head1 NAME

Adminim::Controller::Help - 

=head1 VERSION

This documentation refers to <Adminim::Controller::Help> version 0.1

=head1 AUTHOR

<Anton Morozov>  (<anton@antonfin.kiev.ua>)

=head1 SYNOPSIS

use Adminim::Controller::Help;

=head1 DESCRIPTION

=head1 METHODS

=head1 LICENSE AND COPYRIGHT

    Copyright (c) 2011 (anton@antonfin.kiev.ua)
    All rights reserved.

=cut

