# Generated from default/object.tt
package Paws::CloudDirectory::BatchAttachPolicy;
  use Moo;
  use Types::Standard qw//;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectReference/;
  has ObjectReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1);
  has PolicyReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ObjectReference' => {
                                      'class' => 'Paws::CloudDirectory::ObjectReference',
                                      'type' => 'CloudDirectory_ObjectReference'
                                    },
               'PolicyReference' => {
                                      'class' => 'Paws::CloudDirectory::ObjectReference',
                                      'type' => 'CloudDirectory_ObjectReference'
                                    }
             },
  'IsRequired' => {
                    'ObjectReference' => 1,
                    'PolicyReference' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchAttachPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchAttachPolicy object:

  $service_obj->Method(Att1 => { ObjectReference => $value, ..., PolicyReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchAttachPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->ObjectReference

=head1 DESCRIPTION

Attaches a policy object to a regular object inside a BatchRead
operation. For more information, see AttachPolicy and
BatchReadRequest$Operations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ObjectReference => CloudDirectory_ObjectReference

  The reference that identifies the object to which the policy will be
attached.


=head2 B<REQUIRED> PolicyReference => CloudDirectory_ObjectReference

  The reference that is associated with the policy object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

