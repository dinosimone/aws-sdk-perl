# Generated from default/object.tt
package Paws::GuardDuty::Country;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw//;
  has CountryCode => (is => 'ro', isa => Str);
  has CountryName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CountryName' => {
                                  'type' => 'Str'
                                },
               'CountryCode' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'CountryName' => 'countryName',
                       'CountryCode' => 'countryCode'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Country

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Country object:

  $service_obj->Method(Att1 => { CountryCode => $value, ..., CountryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Country object:

  $result = $service_obj->Method(...);
  $result->Att1->CountryCode

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CountryCode => Str

  Country code of the remote IP address.


=head2 CountryName => Str

  Country name of the remote IP address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

