# Generated from json/callresult_class.tt

package Paws::ServiceDiscovery::DeregisterInstanceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceDiscovery::Types qw//;
  has OperationId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OperationId' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::DeregisterInstanceResponse

=head1 ATTRIBUTES


=head2 OperationId => Str

A value that you can use to determine whether the request completed
successfully. For more information, see GetOperation.


=head2 _request_id => Str


=cut

1;