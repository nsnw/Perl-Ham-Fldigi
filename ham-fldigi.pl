#!/usr/bin/perl

use Ham::Fldigi;
use Data::Dumper;
use Carp;

my $f = new Ham::Fldigi;
my $c = $f->client("localhost", 7362, "test");

if(!defined($c)) { croak("Couldn't connect to fldigi!"); };

$c->modem("BPSK125");
$c->send("CQ CQ CQ DE M0VKG M0VKG M0VKG KN");
