
package Paws::EC2::CreateClientVpnRoute;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw//;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has ClientVpnEndpointId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has DestinationCidrBlock => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has TargetVpcSubnetId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateClientVpnRoute');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::CreateClientVpnRouteResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'TargetVpcSubnetId' => {
                                        'type' => 'Str'
                                      },
               'DestinationCidrBlock' => {
                                           'type' => 'Str'
                                         },
               'ClientVpnEndpointId' => {
                                          'type' => 'Str'
                                        },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'TargetVpcSubnetId' => 1,
                    'DestinationCidrBlock' => 1,
                    'ClientVpnEndpointId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateClientVpnRoute - Arguments for method CreateClientVpnRoute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateClientVpnRoute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateClientVpnRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateClientVpnRoute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateClientVpnRouteResult = $ec2->CreateClientVpnRoute(
      ClientVpnEndpointId  => 'MyString',
      DestinationCidrBlock => 'MyString',
      TargetVpcSubnetId    => 'MyString',
      ClientToken          => 'MyString',    # OPTIONAL
      Description          => 'MyString',    # OPTIONAL
      DryRun               => 1,             # OPTIONAL
    );

    # Results:
    my $Status = $CreateClientVpnRouteResult->Status;

    # Returns a L<Paws::EC2::CreateClientVpnRouteResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateClientVpnRoute>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 B<REQUIRED> ClientVpnEndpointId => Str

The ID of the Client VPN endpoint to which to add the route.



=head2 Description => Str

A brief description of the route.



=head2 B<REQUIRED> DestinationCidrBlock => Str

The IPv4 address range, in CIDR notation, of the route destination. For
example:

=over

=item *

To add a route for Internet access, enter C<0.0.0.0/0>

=item *

To add a route for a peered VPC, enter the peered VPC's IPv4 CIDR range

=item *

To add a route for an on-premises network, enter the AWS Site-to-Site
VPN connection's IPv4 CIDR range

=back

Route address ranges cannot overlap with the CIDR range specified for
client allocation.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> TargetVpcSubnetId => Str

The ID of the subnet through which you want to route traffic. The
specified subnet must be an existing target network of the Client VPN
endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateClientVpnRoute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

