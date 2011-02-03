#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests => 10;
use Test::Mojo;

use_ok('Adminim');

# Test
my $t = Test::Mojo->new(app => 'Adminim');
$t->get_ok('/help')->status_is(200)->content_like(qr/help/i);
$t->get_ok('/help/test')->status_is(200)->content_like(qr/help/i);          # TODO!
$t->get_ok('/help/test/test')->status_is(200)->content_like(qr/help/i);     # TODO!

1;

