use strict;
use warnings;

my $filename = 'HANSOLO.hs';
open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";

for (my $i = 0; $i < 1000000; $i++) {
    print $fh "HANSOLO\n";
}

close $fh;
