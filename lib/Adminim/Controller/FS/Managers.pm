package Adminim::Controller::FS::Managers;

use strict;
use warnings;
use Data::Dumper;
use File::Basename qw/dirname basename/;
use base 'Mojolicious::Controller';

our $VERSION = 0.01;

sub show {
    my $self = shift;
    $self->stash( menu => 'fs' );
}

sub folders {
    my $self = shift;
    my $conf = $self->stash('conf');
    my $l = $self->app->log();

    my $path = $self->param('id');

    my $fs_struct = [];
    if ( $path ) {
        my @list = grep { -d $_ } glob( "$path/*" );

        push @$fs_struct, map { {
            data    => basename( $_ ),
            attr    => { id => $_ },
            state   => _is_sub_folder_exists($_) ? 'closed' : 'opened'
            } } @list;

    } else {
        foreach my $node ( @{ $conf->{fs} } ) {
            my @list = grep { -d $_ } glob( "$node/*" );
            push @$fs_struct, {
                data        => $node,
                attr        => { id => $node },
                children    => [ map { {
                    data    => basename( $_ ),
                    attr    => { id => $_ },
                    state => _is_sub_folder_exists($_) ? 'closed' : 'opened'
                    }, } @list ]
            };
        }
    }

    $self->render_json( $fs_struct );
}

sub _is_sub_folder_exists {
    my $path = shift;
    grep { -d $_ } glob( "$path/*" );
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


