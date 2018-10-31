perl -MList::Util=min,sum -nle '@d=split(/x/);@s=($d[0]*$d[1],$d[0]*$d[2],$d[1]*$d[2]);$m=min(@s);$t+=sum($m,map{$_*2}@s)}{print $t' <input

