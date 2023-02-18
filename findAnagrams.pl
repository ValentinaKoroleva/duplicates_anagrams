#!/usr/bin/perl
use strict;
use warnings;

# Exercise 2
my $start = time;
open FICHIER, "<fichier-ID.log" or die;
my $line_number = 1;
my %lines_count;
my %lines2anagrams;
my %lines_numbers;
print "line---line_number\n";

foreach my $ln (<FICHIER>) {
    $ln =~ s/^\s+|\s+$//g;
    my $str = join( "", sort { $a cmp $b } split( //, $ln ) );
    $lines_count{$str}++;
    if ( $lines_count{$str} > 1 ) {
        push(@{$lines2anagrams{$str}}, $ln."---".$line_number);
    }
    else {
        my @tmp = ( $ln."---".$line_number );
        $lines2anagrams{$str} = \@tmp;
    }
    $line_number++;
}
close FICHIER;
foreach my $str ( keys %lines_count ) {
    if ( $lines_count{$str} > 1 ) {
            print  join(',', @{ $lines2anagrams{$str} }). "\n";  
    }
}

my $duration = time - $start;
print "Duration is " . $duration . " sec\n";
print "Complexity is O(n * (k * ln(k)) \n";
