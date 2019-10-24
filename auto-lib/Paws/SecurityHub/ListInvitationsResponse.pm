
package Paws::SecurityHub::ListInvitationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_Invitation/;
  has Invitations => (is => 'ro', isa => ArrayRef[SecurityHub_Invitation]);
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
               'Invitations' => {
                                  'class' => 'Paws::SecurityHub::Invitation',
                                  'type' => 'ArrayRef[SecurityHub_Invitation]'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListInvitationsResponse

=head1 ATTRIBUTES


=head2 Invitations => ArrayRef[SecurityHub_Invitation]

The details of the invitations returned by the operation.


=head2 NextToken => Str

The token that is required for pagination.


=head2 _request_id => Str


=cut

