# Generated from default/object.tt
package Paws::ResourceGroups::Group;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ResourceGroups::Types qw//;
  has Description => (is => 'ro', isa => Str);
  has GroupArn => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GroupArn' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'GroupArn' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::Group

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ResourceGroups::Group object:

  $service_obj->Method(Att1 => { Description => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ResourceGroups::Group object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

A resource group.

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the resource group.


=head2 B<REQUIRED> GroupArn => Str

  The ARN of a resource group.


=head2 B<REQUIRED> Name => Str

  The name of a resource group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

