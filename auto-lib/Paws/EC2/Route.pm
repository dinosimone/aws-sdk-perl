package Paws::EC2::Route;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has DestinationCidrBlock => (is => 'ro', isa => Str);
  has DestinationIpv6CidrBlock => (is => 'ro', isa => Str);
  has DestinationPrefixListId => (is => 'ro', isa => Str);
  has EgressOnlyInternetGatewayId => (is => 'ro', isa => Str);
  has GatewayId => (is => 'ro', isa => Str);
  has InstanceId => (is => 'ro', isa => Str);
  has InstanceOwnerId => (is => 'ro', isa => Str);
  has NatGatewayId => (is => 'ro', isa => Str);
  has NetworkInterfaceId => (is => 'ro', isa => Str);
  has Origin => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has TransitGatewayId => (is => 'ro', isa => Str);
  has VpcPeeringConnectionId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NatGatewayId' => {
                                   'type' => 'Str'
                                 },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'DestinationIpv6CidrBlock' => {
                                               'type' => 'Str'
                                             },
               'DestinationPrefixListId' => {
                                              'type' => 'Str'
                                            },
               'InstanceOwnerId' => {
                                      'type' => 'Str'
                                    },
               'DestinationCidrBlock' => {
                                           'type' => 'Str'
                                         },
               'State' => {
                            'type' => 'Str'
                          },
               'EgressOnlyInternetGatewayId' => {
                                                  'type' => 'Str'
                                                },
               'TransitGatewayId' => {
                                       'type' => 'Str'
                                     },
               'Origin' => {
                             'type' => 'Str'
                           },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       },
               'GatewayId' => {
                                'type' => 'Str'
                              },
               'VpcPeeringConnectionId' => {
                                             'type' => 'Str'
                                           }
             },
  'NameInRequest' => {
                       'NatGatewayId' => 'natGatewayId',
                       'InstanceId' => 'instanceId',
                       'DestinationIpv6CidrBlock' => 'destinationIpv6CidrBlock',
                       'DestinationPrefixListId' => 'destinationPrefixListId',
                       'InstanceOwnerId' => 'instanceOwnerId',
                       'DestinationCidrBlock' => 'destinationCidrBlock',
                       'State' => 'state',
                       'EgressOnlyInternetGatewayId' => 'egressOnlyInternetGatewayId',
                       'TransitGatewayId' => 'transitGatewayId',
                       'Origin' => 'origin',
                       'NetworkInterfaceId' => 'networkInterfaceId',
                       'GatewayId' => 'gatewayId',
                       'VpcPeeringConnectionId' => 'vpcPeeringConnectionId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Route

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Route object:

  $service_obj->Method(Att1 => { DestinationCidrBlock => $value, ..., VpcPeeringConnectionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Route object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationCidrBlock

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DestinationCidrBlock => Str

  The IPv4 CIDR block used for the destination match.


=head2 DestinationIpv6CidrBlock => Str

  The IPv6 CIDR block used for the destination match.


=head2 DestinationPrefixListId => Str

  The prefix of the AWS service.


=head2 EgressOnlyInternetGatewayId => Str

  The ID of the egress-only internet gateway.


=head2 GatewayId => Str

  The ID of a gateway attached to your VPC.


=head2 InstanceId => Str

  The ID of a NAT instance in your VPC.


=head2 InstanceOwnerId => Str

  The AWS account ID of the owner of the instance.


=head2 NatGatewayId => Str

  The ID of a NAT gateway.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 Origin => Str

  Describes how the route was created.

=over

=item *

C<CreateRouteTable> - The route was automatically created when the
route table was created.

=item *

C<CreateRoute> - The route was manually added to the route table.

=item *

C<EnableVgwRoutePropagation> - The route was propagated by route
propagation.

=back



=head2 State => Str

  The state of the route. The C<blackhole> state indicates that the
route's target isn't available (for example, the specified gateway
isn't attached to the VPC, or the specified NAT instance has been
terminated).


=head2 TransitGatewayId => Str

  The ID of a transit gateway.


=head2 VpcPeeringConnectionId => Str

  The ID of a VPC peering connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
