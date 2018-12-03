#!/usr/bin/perl -l

my %seen;
my @input = <>;

while(1) {
    for (@input) {
        $r+=$_;
        if($seen{$r}) {
            print $r;
            exit;
        }
        $seen{$r}++;
    }
}



