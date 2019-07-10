package Paws::GroundStation::DataflowEndpoint;
  use Moose;
  has Address => (is => 'ro', isa => 'Paws::GroundStation::SocketAddress', request_name => 'address', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::DataflowEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::DataflowEndpoint object:

  $service_obj->Method(Att1 => { Address => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::DataflowEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

Information about a dataflow endpoint.

=head1 ATTRIBUTES


=head2 Address => L<Paws::GroundStation::SocketAddress>

  Socket address of a dataflow endpoint.


=head2 Name => Str

  Name of a dataflow endpoint.


=head2 Status => Str

  Status of a dataflow endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

