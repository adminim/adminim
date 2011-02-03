#!/usr/bin/env perl

use strict;
use warnings;

#use Test::More tests => 7;
use Test::More tests => 4;
use Test::Mojo;

use_ok('Adminim');

# Test
my $t = Test::Mojo->new(app => 'Adminim');
$t->get_ok('/test_url_no_found' . rand, { 'Accept-Language' => 'en' })
        ->status_is(404)->content_like(qr/error/i);

#my $error_ru = 'ошибка';
#utf8::decode( $error_ru );

#$t->get_ok('/test_url_no_found' . rand, { 'Accept-Language' => 'ru,en-us;q=0.7,en;q=0.3' })
#        ->status_is(404)->content_like(qr/$error_ru/i);

