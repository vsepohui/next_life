#!/usr/bin/perl

use 5.022;
use warnings;
no warnings 'deprecated::smartmatch';

say "Lord of Wizard comes to you...";
sleep 1;
say "Say: \'Wan't a realize you future?\'";
sleep 1;
say "Say what you want?";
sleep 1;
say '';
say '';
say '';


my $c = confirm ("Are you ready to answer? [Y/N]"); 
sleep 1;

unless ($c) {
	say "Sorry, start this application when you will be ready!";
	exit;
}

say "Ok, can you describe what you want in a future?\n";

my $text = input();

sleep 1;

say '';
say '-' x 40;
say "Ok, wait three weeks, and your future may by realized!";

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
