# Generated from json/callargs_class.tt

package Paws::DeviceFarm::DeleteDevicePool;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteDevicePool');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DeviceFarm::DeleteDevicePoolResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'Arn' => 'arn'
                     },
  'IsRequired' => {
                    'Arn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::DeleteDevicePool - Arguments for method DeleteDevicePool on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDevicePool on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method DeleteDevicePool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDevicePool.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To delete a device pool
    # The following example deletes a specific device pool.
    my $DeleteDevicePoolResult = $devicefarm->DeleteDevicePool( 'Arn' =>
        'arn:aws:devicefarm:us-west-2::devicepool:123-456-EXAMPLE-GUID' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/DeleteDevicePool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

Represents the Amazon Resource Name (ARN) of the Device Farm device
pool you wish to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDevicePool in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

