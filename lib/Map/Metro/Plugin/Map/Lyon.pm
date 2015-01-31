use 5.14.0;

package Map::Metro::Plugin::Map::Lyon;

# VERSION
# ABSTRACT: Map::Metro map for Lyon

use Moose;
with 'Map::Metro::Plugin::Map';

has '+mapfile' => (
    default => 'map-lyon.metro',
);
sub map_version {
    return $VERSION;
}
sub map_package {
    return __PACKAGE__;
}

1;

__END__

=pod

=encoding utf-8

=head1 SYNOPSIS

    use Map::Metro;
    my $graph = Map::Metro->new('Lyon')->parse;

Or

	$ map-metro.pl route Lyon 1 4 

=head1 DESCRIPTION

See L<Map::Metro> for usage information.

=head1 Status

L<Map::Metro::Plugin::Map::Lyon::Lines>

This map includes:

=over 4

=item *

The four metro lines [L<wikipedia|https://en.wikipedia.org/wiki/Lyon_Metro>]

=back

=cut
