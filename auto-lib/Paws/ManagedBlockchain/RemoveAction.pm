package Paws::ManagedBlockchain::RemoveAction;
  use Moose;
  has MemberId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::RemoveAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::RemoveAction object:

  $service_obj->Method(Att1 => { MemberId => $value, ..., MemberId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::RemoveAction object:

  $result = $service_obj->Method(...);
  $result->Att1->MemberId

=head1 DESCRIPTION

An action to remove a member from a Managed Blockchain network as the
result of a removal proposal that is C<APPROVED>. The member and all
associated resources are deleted from the network.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MemberId => Str

  The unique identifier of the member to remove.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

