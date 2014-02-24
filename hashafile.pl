#! /usr/bin/perl
use strict;
use warnings;


open FILE, "+<", $ARGV[0] or die $!;
my @lines = <FILE>;

foreach(@lines)
{
	$_ =~ s/^/#/;	
	print FILE $_;
}
#open toBeHashed, "+<", $ARGV[0] or die $!;
#while (toBeHashed)
#{
#	print $_;
#}

