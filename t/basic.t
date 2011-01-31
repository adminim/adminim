#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests => 4;
use Test::Mojo;

use_ok('Adminim');

# Test
my $t = Test::Mojo->new(app => 'Adminim');
$t->get_ok('/welcome')->status_is(200)->content_like(qr/Mojolicious Web Framework/i);
