package Paws::FraudDetector::ModelVariable;
  use Moose;
  has Index => (is => 'ro', isa => 'Int', request_name => 'index', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::ModelVariable

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::ModelVariable object:

  $service_obj->Method(Att1 => { Index => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::ModelVariable object:

  $result = $service_obj->Method(...);
  $result->Att1->Index

=head1 DESCRIPTION

The model variable.E<gt>

=head1 ATTRIBUTES


=head2 Index => Int

  The model variable's index.E<gt>


=head2 B<REQUIRED> Name => Str

  The model variable's name.E<gt>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

