# Generated from default/object.tt
package Paws::DirectConnect::DirectConnectGateway;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::DirectConnect::Types qw//;
  has AmazonSideAsn => (is => 'ro', isa => Int);
  has DirectConnectGatewayId => (is => 'ro', isa => Str);
  has DirectConnectGatewayName => (is => 'ro', isa => Str);
  has DirectConnectGatewayState => (is => 'ro', isa => Str);
  has OwnerAccount => (is => 'ro', isa => Str);
  has StateChangeError => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DirectConnectGatewayName' => {
                                               'type' => 'Str'
                                             },
               'AmazonSideAsn' => {
                                    'type' => 'Int'
                                  },
               'StateChangeError' => {
                                       'type' => 'Str'
                                     },
               'DirectConnectGatewayId' => {
                                             'type' => 'Str'
                                           },
               'OwnerAccount' => {
                                   'type' => 'Str'
                                 },
               'DirectConnectGatewayState' => {
                                                'type' => 'Str'
                                              }
             },
  'NameInRequest' => {
                       'DirectConnectGatewayName' => 'directConnectGatewayName',
                       'AmazonSideAsn' => 'amazonSideAsn',
                       'StateChangeError' => 'stateChangeError',
                       'DirectConnectGatewayId' => 'directConnectGatewayId',
                       'OwnerAccount' => 'ownerAccount',
                       'DirectConnectGatewayState' => 'directConnectGatewayState'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DirectConnectGateway

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::DirectConnectGateway object:

  $service_obj->Method(Att1 => { AmazonSideAsn => $value, ..., StateChangeError => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::DirectConnectGateway object:

  $result = $service_obj->Method(...);
  $result->Att1->AmazonSideAsn

=head1 DESCRIPTION

Information about a Direct Connect gateway, which enables you to
connect virtual interfaces and virtual private gateway or transit
gateways.

=head1 ATTRIBUTES


=head2 AmazonSideAsn => Int

  The autonomous system number (ASN) for the Amazon side of the
connection.


=head2 DirectConnectGatewayId => Str

  The ID of the Direct Connect gateway.


=head2 DirectConnectGatewayName => Str

  The name of the Direct Connect gateway.


=head2 DirectConnectGatewayState => Str

  The state of the Direct Connect gateway. The following are the possible
values:

=over

=item *

C<pending>: The initial state after calling CreateDirectConnectGateway.

=item *

C<available>: The Direct Connect gateway is ready for use.

=item *

C<deleting>: The initial state after calling
DeleteDirectConnectGateway.

=item *

C<deleted>: The Direct Connect gateway is deleted and cannot pass
traffic.

=back



=head2 OwnerAccount => Str

  The ID of the AWS account that owns the Direct Connect gateway.


=head2 StateChangeError => Str

  The error message if the state of an object failed to advance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

