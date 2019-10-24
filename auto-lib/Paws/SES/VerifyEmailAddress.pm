# Generated from callargs_class.tt

package Paws::SES::VerifyEmailAddress;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw//;
  has EmailAddress => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'VerifyEmailAddress');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EmailAddress' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'EmailAddress' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::VerifyEmailAddress - Arguments for method VerifyEmailAddress on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method VerifyEmailAddress on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method VerifyEmailAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to VerifyEmailAddress.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # VerifyEmailAddress
    # The following example starts the email address verification process with
    # Amazon SES:
    $email->VerifyEmailAddress( 'EmailAddress' => 'user@example.com' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/VerifyEmailAddress>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailAddress => Str

The email address to be verified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method VerifyEmailAddress in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

