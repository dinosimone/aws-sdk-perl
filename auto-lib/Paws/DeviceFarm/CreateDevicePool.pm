# Generated from json/callargs_class.tt

package Paws::DeviceFarm::CreateDevicePool;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Rule/;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has MaxDevices => (is => 'ro', isa => Int, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ProjectArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Rules => (is => 'ro', isa => ArrayRef[DeviceFarm_Rule], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDevicePool');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DeviceFarm::CreateDevicePoolResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Rules' => {
                            'class' => 'Paws::DeviceFarm::Rule',
                            'type' => 'ArrayRef[DeviceFarm_Rule]'
                          },
               'ProjectArn' => {
                                 'type' => 'Str'
                               },
               'Name' => {
                           'type' => 'Str'
                         },
               'MaxDevices' => {
                                 'type' => 'Int'
                               },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Rules' => 'rules',
                       'ProjectArn' => 'projectArn',
                       'Name' => 'name',
                       'MaxDevices' => 'maxDevices',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'Rules' => 1,
                    'ProjectArn' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateDevicePool - Arguments for method CreateDevicePool on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDevicePool on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method CreateDevicePool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDevicePool.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To create a new device pool
    # The following example creates a new device pool named MyDevicePool inside
    # an existing project.
    my $CreateDevicePoolResult = $devicefarm->CreateDevicePool(
      'Description' => 'My Android devices',
      'Name'        => 'MyDevicePool',
      'ProjectArn' =>
'arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456',
      'Rules' => [

      ]
    );

    # Results:
    my $devicePool = $CreateDevicePoolResult->devicePool;

    # Returns a L<Paws::DeviceFarm::CreateDevicePoolResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/CreateDevicePool>

=head1 ATTRIBUTES


=head2 Description => Str

The device pool's description.



=head2 MaxDevices => Int

The number of devices that Device Farm can add to your device pool.
Device Farm adds devices that are available and that meet the criteria
that you assign for the C<rules> parameter. Depending on how many
devices meet these constraints, your device pool might contain fewer
devices than the value for this parameter.

By specifying the maximum number of devices, you can control the costs
that you incur by running tests.



=head2 B<REQUIRED> Name => Str

The device pool's name.



=head2 B<REQUIRED> ProjectArn => Str

The ARN of the project for the device pool.



=head2 B<REQUIRED> Rules => ArrayRef[DeviceFarm_Rule]

The device pool's rules.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDevicePool in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

