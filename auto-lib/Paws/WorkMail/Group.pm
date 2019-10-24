# Generated from default/object.tt
package Paws::WorkMail::Group;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkMail::Types qw//;
  has DisabledDate => (is => 'ro', isa => Str);
  has Email => (is => 'ro', isa => Str);
  has EnabledDate => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'State' => {
                            'type' => 'Str'
                          },
               'Name' => {
                           'type' => 'Str'
                         },
               'EnabledDate' => {
                                  'type' => 'Str'
                                },
               'Email' => {
                            'type' => 'Str'
                          },
               'DisabledDate' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::Group

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkMail::Group object:

  $service_obj->Method(Att1 => { DisabledDate => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkMail::Group object:

  $result = $service_obj->Method(...);
  $result->Att1->DisabledDate

=head1 DESCRIPTION

The representation of an Amazon WorkMail group.

=head1 ATTRIBUTES


=head2 DisabledDate => Str

  The date indicating when the group was disabled from Amazon WorkMail
use.


=head2 Email => Str

  The email of the group.


=head2 EnabledDate => Str

  The date indicating when the group was enabled for Amazon WorkMail use.


=head2 Id => Str

  The identifier of the group.


=head2 Name => Str

  The name of the group.


=head2 State => Str

  The state of the group, which can be ENABLED, DISABLED, or DELETED.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

