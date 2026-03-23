#!/usr/bin/perl

use 5.022;
use warnings;

my $c = confirm ("Hello, you are ready to next life? [Y/N]");
unless ($c) {
	say "Sorry, start this application when you will ready!";
}

say "Ok, can you describe what you will wanting in next life?";
say '';


my $text = '';

print "> ";
while (1) {
	$text = <>;
	last if ($text eq "\n");
	print "> ";
}

say '';
say '-' x 40;
say "Ok, you can rip, and next life will apllicated!";



sub confirm {
	my $str = shift;
	
	print "$str ";
	
	my $c = <>;
	chomp $c;
	
	$c = lc $c;
	
	return $c eq 'y';
}

1;
