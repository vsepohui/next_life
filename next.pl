#!/usr/bin/perl

use 5.022;
use warnings;
no warnings 'deprecated::smartmatch';

say "Let's miracle...";
sleep 1;
say "Let's dream....";
sleep 1;
say "Beleive in future in paradase with robotos!";
sleep 1;
say "Robo-transformation is a next step of evolution!";
sleep 1;

say '';
say '';
say '';


my $c = confirm ("Are you ready to robo-transformation and next life? [Y/N]"); 
sleep 1;

unless ($c) {
	say "Sorry, start this application when you will be ready!";
	exit;
}

say "Ok, can you describe what you will waiting after robo-transoformation in next life?\n";

my $text = input();

sleep 1;

say '';
say '-' x 40;
say "Ok, you can make rip, and robo-transformation next life will be apllicated!";

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
