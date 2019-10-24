# Generated from default/object.tt
package Paws::Inspector::Exclusion;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_Scope Inspector_Attribute/;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has Attributes => (is => 'ro', isa => ArrayRef[Inspector_Attribute]);
  has Description => (is => 'ro', isa => Str, required => 1);
  has Recommendation => (is => 'ro', isa => Str, required => 1);
  has Scopes => (is => 'ro', isa => ArrayRef[Inspector_Scope], required => 1);
  has Title => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Scopes' => {
                             'class' => 'Paws::Inspector::Scope',
                             'type' => 'ArrayRef[Inspector_Scope]'
                           },
               'Attributes' => {
                                 'class' => 'Paws::Inspector::Attribute',
                                 'type' => 'ArrayRef[Inspector_Attribute]'
                               },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Title' => {
                            'type' => 'Str'
                          },
               'Recommendation' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'Scopes' => 'scopes',
                       'Attributes' => 'attributes',
                       'Arn' => 'arn',
                       'Description' => 'description',
                       'Title' => 'title',
                       'Recommendation' => 'recommendation'
                     },
  'IsRequired' => {
                    'Scopes' => 1,
                    'Arn' => 1,
                    'Description' => 1,
                    'Title' => 1,
                    'Recommendation' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::Exclusion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::Exclusion object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::Exclusion object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about what was excluded from an assessment run.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN that specifies the exclusion.


=head2 Attributes => ArrayRef[Inspector_Attribute]

  The system-defined attributes for the exclusion.


=head2 B<REQUIRED> Description => Str

  The description of the exclusion.


=head2 B<REQUIRED> Recommendation => Str

  The recommendation for the exclusion.


=head2 B<REQUIRED> Scopes => ArrayRef[Inspector_Scope]

  The AWS resources for which the exclusion pertains.


=head2 B<REQUIRED> Title => Str

  The name of the exclusion.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

