#!/usr/bin/perl -l

while(<>) {
    @d=split(/,/,$_);
    $r+=$_ for @d;
}

print $r;


