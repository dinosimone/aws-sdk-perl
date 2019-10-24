# Generated from default/object.tt
package Paws::SSM::ResultAttribute;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has TypeName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TypeName' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'TypeName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ResultAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ResultAttribute object:

  $service_obj->Method(Att1 => { TypeName => $value, ..., TypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ResultAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->TypeName

=head1 DESCRIPTION

The inventory item result attribute.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TypeName => Str

  Name of the inventory item type. Valid value: AWS:InstanceInformation.
Default Value: AWS:InstanceInformation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

