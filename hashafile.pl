#! /usr/bin/perl
use strict;
use warnings;


open FILE, "<", $ARGV[0] or die $!;
my @lines = <FILE>;
close FILE;

open NEWFILE, ">", $ARGV[0] or die $!;

foreach(@lines)
{
	$_ =~ s/^/#/;	
	print NEWFILE $_;
}
close NEWFILE;
