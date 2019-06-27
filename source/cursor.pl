#!/usr/bin/perl

use warnings;
use strict;

my $arg = shift;

open (my $f, '<', $arg) or die;

my @lines;

while (my $line = <$f>) {
  my @elems = split ' ', $line;
  my $size = $elems[0];
  my $x = $elems[1];
  my $y = $elems[2];
  my $fn = $elems[3];
  #print join " ", @elems[0,1,2,3];
  #print "\n";
  #print "$size $x $y $fn\n";
  push(@lines, $line)
}
close $f;

sub multiline {

    my $of = shift;
    my $mult = shift;
    for my $line (@lines) {
    #print $line;  
        my @elems = split ' ', $line;
        my $size = int($elems[0] * $mult + 0.99);
        my $x = int($elems[1] * $mult + 0.99);
        my $y = int($elems[2] * $mult + 0.99);
        my $fn = $elems[3];
        print $of "$size $x $y $size/$fn\n";
    }
}
open (my $of, '>>', $arg) or die "Could not open file '$arg' $!";

my @sizes = (1.5, 2, 2.25, 3);
foreach my $s (@sizes) {
    multiline($of, $s);
}
close $of; 

open ($f, '<', $arg) or die;
while (<$f>) {
    print $_;
}
