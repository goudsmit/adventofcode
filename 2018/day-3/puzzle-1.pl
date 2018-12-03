#!/usr/bin/perl -l

my %grid;
while(<>) {
    my ($id,$x,$y,$w,$h) = /^#(\d+)\s+\@\s+(\d+),(\d+):\s+(\d+)x(\d+)/;
    for my $dx (1..$w) {
      for my $dy (1..$h) {
        $grid{($x+$dx).','.($y+$dy)}++
      }
    }
}

while(my ($loc,$cnt) = each %grid) {
  $overlap++ if $cnt>1;
}

print $overlap;
