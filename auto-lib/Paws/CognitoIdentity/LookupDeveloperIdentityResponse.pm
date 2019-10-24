# Generated from json/callresult_class.tt

package Paws::CognitoIdentity::LookupDeveloperIdentityResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CognitoIdentity::Types qw//;
  has DeveloperUserIdentifierList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has IdentityId => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);

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
               'DeveloperUserIdentifierList' => {
                                                  'type' => 'ArrayRef[Str|Undef]'
                                                },
               'IdentityId' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::LookupDeveloperIdentityResponse

=head1 ATTRIBUTES


=head2 DeveloperUserIdentifierList => ArrayRef[Str|Undef]

This is the list of developer user identifiers associated with an
identity ID. Cognito supports the association of multiple developer
user identifiers with an identity ID.


=head2 IdentityId => Str

A unique identifier in the format REGION:GUID.


=head2 NextToken => Str

A pagination token. The first call you make will have C<NextToken> set
to null. After that the service will return C<NextToken> values as
needed. For example, let's say you make a request with C<MaxResults>
set to 10, and there are 20 matches in the database. The service will
return a pagination token as a part of the response. This token can be
used to call the API again and get results starting from the 11th
match.


=head2 _request_id => Str


=cut

1;