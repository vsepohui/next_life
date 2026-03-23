#!/usr/bin/perl

use 5.022;
use warnings;
no warnings 'deprecated::smartmatch';


my $c = confirm ("Hello, are you ready to next life? [Y/N]");
unless ($c) {
	say "Sorry, start this application when you will be ready!";
	exit;
}

say "Ok, can you describe what you will wanting in next life?\n";

my $text = input();

say '';
say '-' x 40;
say "Ok, you can make rip, and next life will be apllicated!";

exit;



sub confirm {
	my $str = shift;
	
	print "$str ";
	
	my $c = <>;
	chomp $c;
	
	$c = lc $c;
	
	return $c  ~~ [qw/y yes/];
}

sub input {
	my $text = '';
	
	while (1) {
		print "> ";
		my $s = <>;
		$text .= $s;
		last if ($s eq "\n");
	}
	
	return $text;
}

1;
