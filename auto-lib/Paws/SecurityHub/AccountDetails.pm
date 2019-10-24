# Generated from default/object.tt
package Paws::SecurityHub::AccountDetails;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw//;
  has AccountId => (is => 'ro', isa => Str);
  has Email => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccountId' => {
                                'type' => 'Str'
                              },
               'Email' => {
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

Paws::SecurityHub::AccountDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AccountDetails object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Email => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AccountDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

The details of an AWS account.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The ID of an AWS account.


=head2 Email => Str

  The email of an AWS account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

