#! /usr/bin/perl
use strict;
use warnings;


open FILE, "<", $ARGV[0] or die $!; #open the file for reading that is the first arguement
my @lines = <FILE>; #write the lines of the file to an array called lines
close FILE; #close the file

open NEWFILE, ">", $ARGV[0] or die $!; #open the same file again (with a different file handle) for writing (create if necessary, zero if it already exists)

foreach(@lines) #for each line do the shit below
{
	$_ =~ s/^/#/;  #some magic here: =~ lets you edit the contents of the variable using regex, $_ is a autocreated variable that contains the present stepped value of @lines, then we have some regex that replaces the beginning of the line "^" with a hash	
	print NEWFILE $_; #then we write the edited variable's contents to the new file one line at a time. 
}
close NEWFILE;
