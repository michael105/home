#!/bin/perl -w
#


$posrightcol = 700;
$marginleft = 40;

my $fn = shift or die;

open F, $fn;

my @f = <F>;


my $pos="";
my $rc = 0;
my $ln = 0;
my @o;

foreach my $l ( @f ){
		next if ( $l =~/^#leftcol/ );
		if ( $l =~ /^#rightcol/ ){
				$rc = 1;
				next;
		}
		if ( $rc > 0 ){
				$o[$rc] =~ s/\n$/^pa($posrightcol)$l/;
				$rc++;
		} else {
				$o[$ln] = "^pa($marginleft)$l";
				$ln++;
		}
}


print @o;

