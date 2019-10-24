
package Paws::EC2::AssociateAddress;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw//;
  has AllocationId => (is => 'ro', isa => Str, predicate => 1);
  has AllowReassociation => (is => 'ro', isa => Bool, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has InstanceId => (is => 'ro', isa => Str, predicate => 1);
  has NetworkInterfaceId => (is => 'ro', isa => Str, predicate => 1);
  has PrivateIpAddress => (is => 'ro', isa => Str, predicate => 1);
  has PublicIp => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AssociateAddress');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::AssociateAddressResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'PublicIp' => {
                               'type' => 'Str'
                             },
               'AllowReassociation' => {
                                         'type' => 'Bool'
                                       },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       },
               'PrivateIpAddress' => {
                                       'type' => 'Str'
                                     },
               'AllocationId' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'DryRun' => 'dryRun',
                       'AllowReassociation' => 'allowReassociation',
                       'NetworkInterfaceId' => 'networkInterfaceId',
                       'PrivateIpAddress' => 'privateIpAddress'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateAddress - Arguments for method AssociateAddress on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateAddress on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AssociateAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateAddress.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
   # To associate an Elastic IP address in EC2-VPC
   # This example associates the specified Elastic IP address with the specified
   # instance in a VPC.
    my $AssociateAddressResult = $ec2->AssociateAddress(
      'AllocationId' => 'eipalloc-64d5890a',
      'InstanceId'   => 'i-0b263919b6498b123'
    );

    # Results:
    my $AssociationId = $AssociateAddressResult->AssociationId;

   # Returns a L<Paws::EC2::AssociateAddressResult> object.
   # To associate an Elastic IP address with a network interface
   # This example associates the specified Elastic IP address with the specified
   # network interface.
    my $AssociateAddressResult = $ec2->AssociateAddress(
      'AllocationId'       => 'eipalloc-64d5890a',
      'NetworkInterfaceId' => 'eni-1a2b3c4d'
    );

    # Results:
    my $AssociationId = $AssociateAddressResult->AssociationId;

    # Returns a L<Paws::EC2::AssociateAddressResult> object.
    # To associate an Elastic IP address in EC2-Classic
    # This example associates an Elastic IP address with an instance in
    # EC2-Classic.
    my $AssociateAddressResult = $ec2->AssociateAddress(
      'InstanceId' => 'i-07ffe74c7330ebf53',
      'PublicIp'   => '198.51.100.0'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AssociateAddress>

=head1 ATTRIBUTES


=head2 AllocationId => Str

[EC2-VPC] The allocation ID. This is required for EC2-VPC.



=head2 AllowReassociation => Bool

[EC2-VPC] For a VPC in an EC2-Classic account, specify true to allow an
Elastic IP address that is already associated with an instance or
network interface to be reassociated with the specified instance or
network interface. Otherwise, the operation fails. In a VPC in an
EC2-VPC-only account, reassociation is automatic, therefore you can
specify false to ensure the operation fails if the Elastic IP address
is already associated with another resource.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 InstanceId => Str

The ID of the instance. This is required for EC2-Classic. For EC2-VPC,
you can specify either the instance ID or the network interface ID, but
not both. The operation fails if you specify an instance ID unless
exactly one network interface is attached.



=head2 NetworkInterfaceId => Str

[EC2-VPC] The ID of the network interface. If the instance has more
than one network interface, you must specify a network interface ID.

For EC2-VPC, you can specify either the instance ID or the network
interface ID, but not both.



=head2 PrivateIpAddress => Str

[EC2-VPC] The primary or secondary private IP address to associate with
the Elastic IP address. If no private IP address is specified, the
Elastic IP address is associated with the primary private IP address.



=head2 PublicIp => Str

The Elastic IP address to associate with the instance. This is required
for EC2-Classic.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateAddress in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

