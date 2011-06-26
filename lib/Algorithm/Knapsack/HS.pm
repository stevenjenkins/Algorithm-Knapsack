package Algorithm::Knapsack::HS;

use warnings;
use strict;
use Algorithm::Knapsack;

=head1 NAME

Algorithm::Knapsack::HS - the Horowitz-Sahni algorithm

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

This implements the Horowitz-Sahni algorithm.

=head1 EXPORT

The only export from this module is the HS function.

=head1 SUBROUTINES/METHODS

=head2 HS

=cut

sub HS {
  my ($n,$c,$p_ref, $w_ref) = @_;
  my @p = @{$p_ref};
  my @w = @{$w_ref};
  my $z = 0;
  my %hat = ('z' => 0, 'c' => c);
  $p[$#p] = 0;
  $w[$#w] = $Algorithm::Knapsack::MAXWEIGHT;
  my $j = 1;

  # other globals used by the various blocks.
  my $r, $u;

  # Labels correspond to the labels in the actual algorithm description.
  LABEL2 {
    # Compute the upper bound U_1
   my $temp_sum = 0;
   foreach my $i ($j .. $#w){
     $temp_sum += $w[$i];
     # this deviates slightly from the text to add robustness in the
     # case where the sum of weights never exceeds residual capacity
     if ( $temp_sum > $hat{c} or $i == $#w ){
       $r = $i;
       last;
     }
   }
  }
}

=head1 AUTHOR

Steven Jenkins, C<< <steven.jenkins at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-algorithm::knapsack at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Algorithm::Knapsack>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Algorithm::Knapsack::HS


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Algorithm::Knapsack>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Algorithm::Knapsack>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Algorithm::Knapsack>

=item * Search CPAN

L<http://search.cpan.org/dist/Algorithm::Knapsack/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2011 Steven Jenkins.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this program; if not, write to the Free
Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
02111-1307 USA.


=cut

1; # End of Algorithm::Knapsack::HS
