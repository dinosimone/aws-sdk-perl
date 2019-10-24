# Generated from default/object.tt
package Paws::SDB::ReplaceableItem;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::SDB::Types qw/SDB_ReplaceableAttribute/;
  has Attributes => (is => 'ro', isa => ArrayRef[SDB_ReplaceableAttribute], required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::SDB::ReplaceableAttribute',
                                 'type' => 'ArrayRef[SDB_ReplaceableAttribute]'
                               },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Attributes' => 'Attribute',
                       'Name' => 'ItemName'
                     },
  'IsRequired' => {
                    'Attributes' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::ReplaceableItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SDB::ReplaceableItem object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SDB::ReplaceableItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[SDB_ReplaceableAttribute]

  The list of attributes for a replaceable item.


=head2 B<REQUIRED> Name => Str

  The name of the replaceable item.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

