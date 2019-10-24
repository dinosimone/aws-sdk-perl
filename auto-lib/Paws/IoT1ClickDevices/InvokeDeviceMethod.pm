
package Paws::IoT1ClickDevices::InvokeDeviceMethod;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickDevices::Types qw/IoT1ClickDevices_DeviceMethod/;
  has DeviceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DeviceMethod => (is => 'ro', isa => IoT1ClickDevices_DeviceMethod, predicate => 1);
  has DeviceMethodParameters => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'InvokeDeviceMethod');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/devices/{deviceId}/methods');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT1ClickDevices::InvokeDeviceMethodResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeviceMethod' => {
                                   'class' => 'Paws::IoT1ClickDevices::DeviceMethod',
                                   'type' => 'IoT1ClickDevices_DeviceMethod'
                                 },
               'DeviceId' => {
                               'type' => 'Str'
                             },
               'DeviceMethodParameters' => {
                                             'type' => 'Str'
                                           }
             },
  'ParamInURI' => {
                    'DeviceId' => 'deviceId'
                  },
  'NameInRequest' => {
                       'DeviceMethod' => 'deviceMethod',
                       'DeviceMethodParameters' => 'deviceMethodParameters'
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

Paws::IoT1ClickDevices::InvokeDeviceMethod - Arguments for method InvokeDeviceMethod on L<Paws::IoT1ClickDevices>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeDeviceMethod on the
L<AWS IoT 1-Click Devices Service|Paws::IoT1ClickDevices> service. Use the attributes of this class
as arguments to method InvokeDeviceMethod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeDeviceMethod.

=head1 SYNOPSIS

    my $devices.iot1click = Paws->service('IoT1ClickDevices');
    my $InvokeDeviceMethodResponse = $devices . iot1click->InvokeDeviceMethod(
      DeviceId     => 'My__string',
      DeviceMethod => {
        DeviceType => 'My__string',
        MethodName => 'My__string',
      },    # OPTIONAL
      DeviceMethodParameters => 'My__string',    # OPTIONAL
    );

    # Results:
    my $DeviceMethodResponse =
      $InvokeDeviceMethodResponse->DeviceMethodResponse;

    # Returns a L<Paws::IoT1ClickDevices::InvokeDeviceMethodResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devices.iot1click/InvokeDeviceMethod>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The unique identifier of the device.



=head2 DeviceMethod => IoT1ClickDevices_DeviceMethod

The device method to invoke.



=head2 DeviceMethodParameters => Str

A JSON encoded string containing the device method request parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeDeviceMethod in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

