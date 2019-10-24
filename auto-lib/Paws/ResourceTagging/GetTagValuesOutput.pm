# Generated from json/callresult_class.tt

package Paws::ResourceTagging::GetTagValuesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ResourceTagging::Types qw//;
  has PaginationToken => (is => 'ro', isa => Str);
  has TagValues => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PaginationToken' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TagValues' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::GetTagValuesOutput

=head1 ATTRIBUTES


=head2 PaginationToken => Str

A string that indicates that the response contains more data than can
be returned in a single response. To receive additional data, specify
this string for the C<PaginationToken> value in a subsequent request.


=head2 TagValues => ArrayRef[Str|Undef]

A list of all tag values for the specified key in the AWS account.


=head2 _request_id => Str


=cut

1;