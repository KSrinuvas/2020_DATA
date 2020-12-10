#!/usr/bin/perl
use strict;
use warnings;
use Env;
## standerd input 
my $ss = <STDIN>;
chomp($ss);
print "std input is : $ss\n";

## cmd arguments 

print "cmd arg : @ARGV\n";
my $ll = @ARGV;
print "len of cmd arg : $ll\n";
print "file name is : $0\n";

 
## print the env varible in perl 

while (my ($k,$v) = each (%ENV)) {
	if (exists $ENV{'PATH'}) {
		#print "$k => $v\n";
	}
}

## hash

my %hash = ('a' => 10 , 'b' => 30);

## get keys 

my @keys = keys %hash;
my @values = values %hash;
## update hash

$hash{'c'} = 40;

## exists 

if (exists $hash{'a'}) {
	print "a key is exists\n";
} else {
	print "a key is not exists\n";
}

## get length of hash 

my $hash_len = keys %hash;
print "lenght of the hash is : $hash_len\n";

while (my ($k1,$v1) = each (%hash) ) {
	print "$k1 => $v1\n";
}





## functions 

sub hh {
	print "Hello\n";
}

hh();

sub GG {
	my $sum = 0;
	my $ll = @_;
	foreach (@_) {
		$sum += $_;
	}
	my $avg = $sum / $ll;
	return $avg;
}

my $rr = GG(10,20,30,40);


sub MUL {
	my $arr_ref = shift;
	my $hash_ref = shift;
	while (my ($k,$v) = each (%{$hash_ref})) {
	print "$k => $v\n";
	}
}

my $tt_ref = {'a' => 20, 'b' => 40};
my $yy_ref = [1,2,3,4,5];

MUL($yy_ref,$tt_ref);




	






