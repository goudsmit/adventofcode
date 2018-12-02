#!/usr/bin/perl -l

while(<>) {
    my %count;
    my %by_count;
    for my $letter (split //) {
      delete $by_count{$count{$letter}}->{$letter} if $count{$letter};
      $count{$letter}++;
      $by_count{$count{$letter}}->{$letter} = 1;
    }
    $has_double++ if keys(%{ $by_count{2} });
    $has_triple++ if keys(%{ $by_count{3} });
}

$checksum = $has_double * $has_triple;

print $checksum;

