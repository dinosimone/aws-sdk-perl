
package Paws::IoT1ClickDevices::UpdateDeviceState;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::IoT1ClickDevices::Types qw//;
  has DeviceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Enabled => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDeviceState');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/devices/{deviceId}/state');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT1ClickDevices::UpdateDeviceStateResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'DeviceId' => {
                               'type' => 'Str'
                             }
             },
  'ParamInURI' => {
                    'DeviceId' => 'deviceId'
                  },
  'NameInRequest' => {
                       'Enabled' => 'enabled'
                     },
  'IsRequired' => {
                    'DeviceId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::UpdateDeviceState - Arguments for method UpdateDeviceState on L<Paws::IoT1ClickDevices>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDeviceState on the
L<AWS IoT 1-Click Devices Service|Paws::IoT1ClickDevices> service. Use the attributes of this class
as arguments to method UpdateDeviceState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDeviceState.

=head1 SYNOPSIS

    my $devices.iot1click = Paws->service('IoT1ClickDevices');
    my $UpdateDeviceStateResponse = $devices . iot1click->UpdateDeviceState(
      DeviceId => 'My__string',
      Enabled  => 1,              # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devices.iot1click/UpdateDeviceState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The unique identifier of the device.



=head2 Enabled => Bool

If true, the device is enabled. If false, the device is disabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDeviceState in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

