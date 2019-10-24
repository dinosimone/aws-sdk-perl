
package Paws::EC2::CreateSecurityGroupResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has GroupId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GroupId' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'GroupId' => 'groupId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSecurityGroupResult

=head1 ATTRIBUTES


=head2 GroupId => Str

The ID of the security group.


=head2 _request_id => Str


=cut

