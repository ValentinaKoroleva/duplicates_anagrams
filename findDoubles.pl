#!/usr/bin/perl
use strict;
use warnings;

# Exercise 1
my $start = time;
open FICHIER, "<fichier-ID.log" or die;
my $line_number = 1;
my %lines_count;
my %lines_numbers;

print "line---line_number\n";
foreach my $ln (<FICHIER>) {
    $ln =~ s/^\s+|\s+$//g;
    $lines_count{$ln}++;
    if ( $lines_count{$ln} > 1 ) {
        push( @{ $lines_numbers{$ln} }, $line_number );
        # print "$ln---$line_number\n"; // Possible display at once
    }
    else {
        my @tmp = ($line_number);
        $lines_numbers{$ln} = \@tmp;
    }
    $line_number++;
}
close FICHIER;
foreach my $ln ( keys %lines_numbers ) {
    if ( $lines_count{$ln} > 1 ) {
        print $ln. "---" . join( ",", @{ $lines_numbers{$ln} } ) . "\n";
    }
}
my $duration = time - $start;
print "N is " . ( $line_number - 1 ) . "\n";
print "Duration is " . $duration . " sec\n";
print "Complexity is O(n)\n";
