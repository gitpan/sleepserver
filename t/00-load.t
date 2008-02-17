
use warnings;
use strict;

use Test::More tests => 1;

my $package = 'sleepserver';
ok ! system($^X, '-c', './bin/' . $package);

# vim:syntax=perl:ts=2:sw=2:et:sta
