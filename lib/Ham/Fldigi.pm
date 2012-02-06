package Ham::Fldigi;

use 5.012004;
use strict;
use warnings;

our $VERSION = '0.0001';

use Ham::Fldigi::Client;
use POE qw(Wheel::Run);
use base qw(Ham::Fldigi::Debug);

sub new {
	
	# Get the class name
	my $class = shift;

	my $self = {
		'version' => $VERSION,
	};

	bless $self, $class;

	$self->debug("Constructor called. Version is ".$VERSION.".");

	# Start the POE kernel. At this point, this does nothing - it's purely to
	# prevent it from printing an error if we're not using the monitoring
	# methods. Use monitor() for actually starting those.
	POE::Kernel->run();

	$self->debug("Returning...");
	return $self;
}

sub client {

	my ($self, $hostname, $port, $name) = @_;

	my $c = Ham::Fldigi::Client->new($hostname, $port, $name);

	return $c;
}

sub monitor {

	my ($self) = @_;
	# Start the POE kernel
	$self->debug("Starting POE kernel...");
	POE::Kernel->run();

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
