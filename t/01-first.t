use strict;
use warnings;

use Test::More;
use Data::Dumper;

require_ok( 'Math::Derivative' );

use Math::Derivative qw( Derivative1 );

my( @x ) = ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 );
my( @y ) = ( 0, 2, 4, 6, 12, 15, 18, 21, 32, 36 );

my( @dydx ) = Derivative1( \@x, \@y );

is_deeply( \@dydx, [ 2, 2, 2, 4, 4.5, 3, 3, 7, 7.5, 4 ] );

done_testing;
