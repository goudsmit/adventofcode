perl -nle '@d=split(/x/);@s=sort{$a<=>$b}@d;$t+=2*($s[0]+$s[1])+($s[0]*$s[1]*$s[2])}{print $t' <input

