package Paws::CloudDirectory::ObjectAttributeAction;
  use Moose;
  has ObjectAttributeActionType => (is => 'ro', isa => 'Str');
  has ObjectAttributeUpdateValue => (is => 'ro', isa => 'Paws::CloudDirectory::TypedAttributeValue');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ObjectAttributeAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::ObjectAttributeAction object:

  $service_obj->Method(Att1 => { ObjectAttributeActionType => $value, ..., ObjectAttributeUpdateValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::ObjectAttributeAction object:

  $result = $service_obj->Method(...);
  $result->Att1->ObjectAttributeActionType

=head1 DESCRIPTION

The action to take on the object attribute.

=head1 ATTRIBUTES


=head2 ObjectAttributeActionType => Str

  Type can be either Update or Delete.


=head2 ObjectAttributeUpdateValue => L<Paws::CloudDirectory::TypedAttributeValue>

  The value that you want to update to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

