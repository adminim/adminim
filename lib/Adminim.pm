package Adminim;

use strict;
use warnings;
use Data::Dumper;
use base 'Mojolicious';

our $VERSION = 0.1;

# This method will run once at server start
sub startup {
    my $self = shift;

    # get config
    my $config = $self->plugin('json_config', { 
            file        => $self->home->rel_file('etc/adminim.conf'), 
            stash_key   => 'conf'
        } );

    $self->secret( $config->{secret} );

    # Plugins
    $self->plugin( charset  => { charset => 'utf8' } );
    $self->plugin( 'i18n' );

    # Routes
    my $r = $self->routes;
    $r->namespace('Adminim::Controller');

    # Help
    $r->route('/')            ->via('get')->to('help#index')->name('index');
    $r->route('/help')        ->via('get')->to('help#index')->name('help_index');
    $r->route('/help/(*page)')->via('get')->to('help#index')->name('help_index_child');

    # settings
    $r->route('/settings')->via('get')->to('settings#index')->name('settings_index');

    # dbmanager  
    $r->route('/dbm')->via('get')->to('d_b_manager#show')->name('d_b_manager_show');

    $r->route('/welcome')->to('example#welcome', id => 1);

    # file manager
    $r->route('/fs')->via('get')->to('f_s-managers#show')->name('fs_managers_show');
}

1;

