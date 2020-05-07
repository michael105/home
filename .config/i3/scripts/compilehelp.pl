#!/bin/perl -w
#


$posrightcol = 700;
$marginleft = 40;
$fg = "white";

my $pattern = { 
		'#'=> "^bg(orange)^fg(black)",
		'##'=> "^fg(blue)" };

my @pm = keys(%{$pattern});

my $fn = shift or die;

open F, $fn;

my @f = <F>;


my $pos="";
my $rc = 0;
my $ln = 0;
my $tableline = 0;
my @o;

foreach my $l ( @f ){
		if ( $l =~ /^#\+table/ ){
				$tableline = $ln;
				next;
		}
		next if ( $l =~/^#\+leftcol/ );
		if ( $l =~ /^#\+rightcol/ ){
				$rc = $tableline;
				next;
		}
		if ( $l =~/^#/ ){
				$l =~ s/^(#*) (.*)/$pattern->{$1}$2^fg($fg)^bg()/;
		} else {
				$l =~ s/^/^fg($fg)/;
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

