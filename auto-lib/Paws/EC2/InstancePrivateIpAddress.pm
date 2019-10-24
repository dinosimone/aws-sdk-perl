package Paws::EC2::InstancePrivateIpAddress;
  use Moo;  use Types::Standard qw/Bool Str/;
  use Paws::EC2::Types qw/EC2_InstanceNetworkInterfaceAssociation/;
  has Association => (is => 'ro', isa => EC2_InstanceNetworkInterfaceAssociation);
  has Primary => (is => 'ro', isa => Bool);
  has PrivateDnsName => (is => 'ro', isa => Str);
  has PrivateIpAddress => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Primary' => {
                              'type' => 'Bool'
                            },
               'PrivateDnsName' => {
                                     'type' => 'Str'
                                   },
               'PrivateIpAddress' => {
                                       'type' => 'Str'
                                     },
               'Association' => {
                                  'class' => 'Paws::EC2::InstanceNetworkInterfaceAssociation',
                                  'type' => 'EC2_InstanceNetworkInterfaceAssociation'
                                }
             },
  'NameInRequest' => {
                       'Primary' => 'primary',
                       'PrivateDnsName' => 'privateDnsName',
                       'PrivateIpAddress' => 'privateIpAddress',
                       'Association' => 'association'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstancePrivateIpAddress

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstancePrivateIpAddress object:

  $service_obj->Method(Att1 => { Association => $value, ..., PrivateIpAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstancePrivateIpAddress object:

  $result = $service_obj->Method(...);
  $result->Att1->Association

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Association => EC2_InstanceNetworkInterfaceAssociation

  The association information for an Elastic IP address for the network
interface.


=head2 Primary => Bool

  Indicates whether this IPv4 address is the primary private IP address
of the network interface.


=head2 PrivateDnsName => Str

  The private IPv4 DNS name.


=head2 PrivateIpAddress => Str

  The private IPv4 address of the network interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
