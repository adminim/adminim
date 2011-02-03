#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests => 3;
use Test::Mojo;

use_ok('Adminim');

# Test
my $t = Test::Mojo->new(app => 'Adminim');
$t->get_ok('/settings')->status_is(200);

1;

