# Generated from json/callresult_class.tt

package Paws::ACMPCA::ListTagsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ACMPCA::Types qw/ACMPCA_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[ACMPCA_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ACMPCA::Tag',
                           'type' => 'ArrayRef[ACMPCA_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::ListTagsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When the list is truncated, this value is present and should be used
for the B<NextToken> parameter in a subsequent pagination request.


=head2 Tags => ArrayRef[ACMPCA_Tag]

The tags associated with your private CA.


=head2 _request_id => Str


=cut

1;