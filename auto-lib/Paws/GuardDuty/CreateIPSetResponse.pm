
package Paws::GuardDuty::CreateIPSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw//;
  has IpSetId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IpSetId' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'IpSetId' => 'ipSetId'
                     },
  'IsRequired' => {
                    'IpSetId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateIPSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IpSetId => Str

The ID of the IPSet resource.


=head2 _request_id => Str


=cut

