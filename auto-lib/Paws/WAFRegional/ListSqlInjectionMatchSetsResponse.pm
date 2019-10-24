# Generated from json/callresult_class.tt

package Paws::WAFRegional::ListSqlInjectionMatchSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAFRegional::Types qw/WAFRegional_SqlInjectionMatchSetSummary/;
  has NextMarker => (is => 'ro', isa => Str);
  has SqlInjectionMatchSets => (is => 'ro', isa => ArrayRef[WAFRegional_SqlInjectionMatchSetSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SqlInjectionMatchSets' => {
                                            'class' => 'Paws::WAFRegional::SqlInjectionMatchSetSummary',
                                            'type' => 'ArrayRef[WAFRegional_SqlInjectionMatchSetSummary]'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListSqlInjectionMatchSetsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more SqlInjectionMatchSet objects than the number that you
specified for C<Limit> in the request, the response includes a
C<NextMarker> value. To list more C<SqlInjectionMatchSet> objects,
submit another C<ListSqlInjectionMatchSets> request, and specify the
C<NextMarker> value from the response in the C<NextMarker> value in the
next request.


=head2 SqlInjectionMatchSets => ArrayRef[WAFRegional_SqlInjectionMatchSetSummary]

An array of SqlInjectionMatchSetSummary objects.


=head2 _request_id => Str


=cut

1;