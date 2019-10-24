# Generated from default/object.tt
package Paws::CloudDirectory::LinkAttributeUpdate;
  use Moo;
  use Types::Standard qw//;
  use Paws::CloudDirectory::Types qw/CloudDirectory_LinkAttributeAction CloudDirectory_AttributeKey/;
  has AttributeAction => (is => 'ro', isa => CloudDirectory_LinkAttributeAction);
  has AttributeKey => (is => 'ro', isa => CloudDirectory_AttributeKey);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AttributeKey' => {
                                   'class' => 'Paws::CloudDirectory::AttributeKey',
                                   'type' => 'CloudDirectory_AttributeKey'
                                 },
               'AttributeAction' => {
                                      'class' => 'Paws::CloudDirectory::LinkAttributeAction',
                                      'type' => 'CloudDirectory_LinkAttributeAction'
                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::LinkAttributeUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::LinkAttributeUpdate object:

  $service_obj->Method(Att1 => { AttributeAction => $value, ..., AttributeKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::LinkAttributeUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeAction

=head1 DESCRIPTION

Structure that contains attribute update information.

=head1 ATTRIBUTES


=head2 AttributeAction => CloudDirectory_LinkAttributeAction

  The action to perform as part of the attribute update.


=head2 AttributeKey => CloudDirectory_AttributeKey

  The key of the attribute being updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

