#!/usr/bin/perl
use strict;
use warnings;

my $n = <STDIN>;
foreach (1..$n) {
    my $count = 0;
    $_ = <STDIN>;
    $count++ for (/[aouiey]/g);
    print "$count ";
}
