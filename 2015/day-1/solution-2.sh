perl -le '$s=<>;for(;$i<length($s);$i++){$c+=(substr($s,$i,1)eq"(")?1:-1;next if $c>=0;print $i+1;last}' <input
