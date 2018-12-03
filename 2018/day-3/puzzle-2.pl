#!/usr/bin/perl -l

my %grid;
my %okay;
while(<>) {
    my ($id,$x,$y,$w,$h) = /^#(\d+)\s+\@\s+(\d+),(\d+):\s+(\d+)x(\d+)/;
    $okay{$id}=1;
    for my $dx (1..$w) {
      for my $dy (1..$h) {
        my $loc = ($x+$dx).','.($y+$dy);
        if(my $prev = $grid{$loc}) {
           for (@$prev) {
               delete $okay{$_};
               delete $okay{$id};
           }
        }
        push @{$grid{$loc}} => $id;
      }
    }
}

print for keys %okay;
