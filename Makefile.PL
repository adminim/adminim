#!/usr/bin/env perl

use 5.008007;

use strict;
use warnings;

use ExtUtils::MakeMaker;

my %prereq_pm = ( 
    'Mojolicious'   => '1.0',
    'Carp'          => '0',
);

WriteMakefile(
    NAME            => 'Adminim',
    VERSION_FROM    => 'lib/Adminim.pm',
    AUTHOR          => 'Adminim Team <team@adminim.net>',
    EXE_FILES       => ['script/adminim'],
    PREREQ_PM       => { %prereq_pm },
    test            => { TESTS => 't/*.t' }
);
