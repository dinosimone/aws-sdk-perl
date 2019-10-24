# Generated from default/object.tt
package Paws::ServiceCatalog::ShareError;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::ServiceCatalog::Types qw//;
  has Accounts => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Error => (is => 'ro', isa => Str);
  has Message => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Error' => {
                            'type' => 'Str'
                          },
               'Message' => {
                              'type' => 'Str'
                            },
               'Accounts' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ShareError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ShareError object:

  $service_obj->Method(Att1 => { Accounts => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ShareError object:

  $result = $service_obj->Method(...);
  $result->Att1->Accounts

=head1 DESCRIPTION

Errors that occurred during the portfolio share operation.

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[Str|Undef]

  List of accounts impacted by the error.


=head2 Error => Str

  Error type that happened when processing the operation.


=head2 Message => Str

  Information about the error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

