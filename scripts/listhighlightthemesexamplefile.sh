alias itsjust='for demonstration'
THISSCRIPT="has the meaning"
echo to be highlighted vi "highlight"
# Let's see..
if [ $0 ]
then
		highlight --list-scripts=themes | \
				perl -e 'my $t; $t=<>  while ( !($t =~ /^acid/) );  while (($t=<>) && $t =~/(^\S+)/) { print "$1\n"; system "highlight --out-format=ansi --style=$1 '$0'"}'
fi

