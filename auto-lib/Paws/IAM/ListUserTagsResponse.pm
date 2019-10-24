# Generated from callresult_class.tt

package Paws::IAM::ListUserTagsResponse;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::IAM::Types qw/IAM_Tag/;
  has IsTruncated => (is => 'ro', isa => Bool);
  has Marker => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[IAM_Tag], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::IAM::Tag',
                           'type' => 'ArrayRef[IAM_Tag]'
                         },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListUserTagsResponse

=head1 ATTRIBUTES


=head2 IsTruncated => Bool

A flag that indicates whether there are more items to return. If your
results were truncated, you can use the C<Marker> request parameter to
make a subsequent pagination request that retrieves more items. Note
that IAM might return fewer than the C<MaxItems> number of results even
when more results are available. Check C<IsTruncated> after every call
to ensure that you receive all of your results.


=head2 Marker => Str

When C<IsTruncated> is C<true>, this element is present and contains
the value to use for the C<Marker> parameter in a subsequent pagination
request.


=head2 B<REQUIRED> Tags => ArrayRef[IAM_Tag]

The list of tags that are currently attached to the user. Each tag
consists of a key name and an associated value. If no tags are attached
to the specified user, the response contains an empty list.


=head2 _request_id => Str


=cut

