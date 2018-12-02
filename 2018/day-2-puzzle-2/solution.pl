#!/usr/bin/perl -l

my @codes = <>;

C1: for my $c1 (@codes) {
C2:  for my $c2 (@codes) {
    next unless length($c1) == length($c2);
    next if $c1 eq $c2;
    my ($same,$different);
CHAR:    for(my $i = 0 ; $i<length($c1); $i++) {
      if( substr($c1,$i,1) ne substr($c2,$i,1) ) {
        $different++;
        next C2 if $different>1;
        next CHAR;
      }
      $same.=substr($c1,$i,1);
    }
    print "$c1";
    print "$c2";
    print "$same";
  }
}


