package Adminim::Controller::Settings;

use strict;
use warnings;

use base 'Mojolicious::Controller';

sub index {
    my $self = shift;
    $self->stash( menu => 'settings' );

    # show user/system settings
}

1;

__END__

=head1 NAME

Adminim::Controller::Settings - 

=head1 VERSION

This documentation refers to <Adminim::Controller::Settings> version 0.1

=head1 AUTHOR

<Anton Morozov>  (<anton@antonfin.kiev.ua>)

=head1 SYNOPSIS

use Adminim::Controller::Settings;

=head1 DESCRIPTION

=head1 METHODS

=head1 LICENSE AND COPYRIGHT

    Copyright (c) 2011 (anton@antonfin.kiev.ua)
    All rights reserved.

=cut

