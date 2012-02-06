package Ham::Fldigi::Debug;

use 5.012004;
use strict;
use warnings;

use Term::ANSIColor;
use Data::Dumper;

our @ISA = qw(Exporter);
our %EXPORT_TAGS = ( 'all' => [ qw() ] );
our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT = qw(debug error warning notice);

sub debug {
  
  my ($self, $msg) = @_;

  open (DEBUG, '>>debug.log');
  print STDERR color 'blue';
  print STDERR "DEBUG   ";
  print STDERR color 'reset';
  print STDERR ": (";
  print STDERR color 'magenta';
  if(ref($self)) {
    print STDERR ref $self;
    print DEBUG ref $self;
  } else {
    print STDERR $self;
    print DEBUG $self;
  }
  print STDERR color 'reset';
  print STDERR "): [";
	print STDERR color 'green';
	print STDERR (caller(1))[3];
	print STDERR color 'reset';
	print STDERR "] ";
	print STDERR $msg."\n";
  print DEBUG " ".$msg."\n";
  close (DEBUG);

}

sub error {
  
  my ($self, $msg) = @_;

  open (ERROR, '>>debug.log');
  print STDERR color 'red';
  print STDERR "ERROR   ";
  print STDERR color 'reset';
  print STDERR ": (";
  print STDERR color 'magenta';
  if(ref($self)) {
    print STDERR ref $self;
    print ERROR ref $self;
  } else {
    print STDERR $self;
    print ERROR $self;
  }
  print STDERR color 'reset';
  print STDERR "): [";
	print STDERR color 'green';
	print STDERR (caller(1))[3];
	print STDERR color 'reset';
	print STDERR "] ";
	print STDERR $msg."\n";
  print ERROR " ".$msg."\n";
  close(ERROR);
}

sub warning {
  
  my ($self, $msg) = @_;

  open (WARNING, '>>debug.log');
  print STDERR color 'yellow';
  print STDERR "WARNING ";
  print STDERR color 'reset';
  print STDERR ": (";
  print STDERR color 'magenta';
  if(ref($self)) {
    print STDERR ref $self;
    print WARNING ref $self;
  } else {
    print STDERR $self;
    print WARNING $self;
  }
  print STDERR color 'reset';
  print STDERR "): [";
	print STDERR color 'green';
	print STDERR (caller(1))[3];
	print STDERR color 'reset';
	print STDERR "] ";
	print STDERR $msg."\n";
  print WARNING " ".$msg."\n";
  close(WARNING);

}

sub notice {
  
  my ($self, $msg) = @_;

  open (NOTICE, '>>debug.log');
  print STDERR color 'green';
  print STDERR "NOTICE  ";
  print STDERR color 'reset';
  print STDERR ": (";
  print STDERR color 'magenta';
  if(ref($self)) {
    print STDERR ref $self;
    print NOTICE ref $self;
  } else {
    print STDERR $self;
    print NOTICE $self;
  }
  print STDERR color 'reset';
  print STDERR "): [";
	print STDERR color 'green';
	print STDERR (caller(1))[3];
	print STDERR color 'reset';
	print STDERR "] ";
	print STDERR $msg."\n";
  print NOTICE " ".$msg."\n";
  close(NOTICE);

}
1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Ham::Fldigi - Perl extension for blah blah blah

=head1 SYNOPSIS

  use Ham::Fldigi;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for Ham::Fldigi, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

Andy Smith, E<lt>andys@E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2012 by Andy Smith

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.12.4 or,
at your option, any later version of Perl 5 you may have available.


=cut
