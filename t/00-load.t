#!perl -T

use Test::More tests => 2;

BEGIN {
    use_ok( 'Algorithm::Knapsack::HS' ) || print "Bail out!
";
    use_ok( 'Algorithm::Knapsack::Utils' ) || print "Bail out!
";
}

diag( "Testing Algorithm::Knapsack::HS $Algorithm::Knapsack::HS::VERSION, Perl $], $^X" );
