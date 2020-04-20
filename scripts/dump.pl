#!/usr/bin/perl -w


open( LOG, ">/tmp/dump.log" );

print LOG "Dumping...\n";

foreach (@ARGV){
		print LOG $_,"\n";
}


print LOG "END ARGV\n\n";

while(<STDIN>){
		print LOG $_;
}


close LOG;



