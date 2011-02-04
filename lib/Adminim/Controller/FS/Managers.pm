package Adminim::Controller::FS::Managers;

use strict;
use warnings;

use base 'Mojolicious::Controller';

our $VERSION = 0.01;

sub show {
    my $self = shift;
    $self->stash( menu => 'fs' );
}

1;

__END__

=head1 NAME

Adminim::Controller::FS::Managers - 

=head1 VERSION

This documentation refers to <Adminim::Controller::FS::Managers> version 0.1

=head1 AUTHOR

<Anton Morozov>  (<anton@antonfin.kiev.ua>)

=head1 SYNOPSIS

use Adminim::Controller::FS::Managers;

=head1 DESCRIPTION

=head1 METHODS

=head1 LICENSE AND COPYRIGHT

    Copyright (c) 2011 (anton@antonfin.kiev.ua)
    All rights reserved.

=cut


