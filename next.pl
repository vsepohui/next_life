#!/usr/bin/perl

use 5.022;
use warnings;
no warnings 'deprecated::smartmatch';


my $c = confirm ("Hello, are you ready to next life? [Y/N]");
unless ($c) {
	say "Sorry, start this application when you will ready!";
	exit;
}

say "Ok, can you describe what you will wanting in next life?\n";

my $text = '';
while (1) {
	print "> ";
	$text = <>;
	last if ($text eq "\n");
}

say '';
say '-' x 40;
say "Ok, you can make rip, and next life will be apllicated!";



sub confirm {
	my $str = shift;
	
	print "$str ";
	
	my $c = <>;
	chomp $c;
	
	$c = lc $c;
	
	return $c  ~~ [qw/y yes/];
}

1;
