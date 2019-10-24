# Generated from json/callresult_class.tt

package Paws::CognitoIdp::GetDeviceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_DeviceType/;
  has Device => (is => 'ro', isa => CognitoIdp_DeviceType, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Device' => {
                             'class' => 'Paws::CognitoIdp::DeviceType',
                             'type' => 'CognitoIdp_DeviceType'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Device' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetDeviceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Device => CognitoIdp_DeviceType

The device.


=head2 _request_id => Str


=cut

1;