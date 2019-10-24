
package Paws::PinpointEmail::CreateEmailIdentity;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_Tag/;
  has EmailIdentity => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[PinpointEmail_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateEmailIdentity');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/email/identities');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::PinpointEmail::CreateEmailIdentityResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EmailIdentity' => {
                                    'type' => 'Str'
                                  },
               'Tags' => {
                           'class' => 'Paws::PinpointEmail::Tag',
                           'type' => 'ArrayRef[PinpointEmail_Tag]'
                         }
             },
  'IsRequired' => {
                    'EmailIdentity' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::CreateEmailIdentity - Arguments for method CreateEmailIdentity on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEmailIdentity on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method CreateEmailIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEmailIdentity.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $CreateEmailIdentityResponse = $email->CreateEmailIdentity(
      EmailIdentity => 'MyIdentity',
      Tags          => [
        {
          Key   => 'MyTagKey',
          Value => 'MyTagValue',

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DkimAttributes = $CreateEmailIdentityResponse->DkimAttributes;
    my $IdentityType   = $CreateEmailIdentityResponse->IdentityType;
    my $VerifiedForSendingStatus =
      $CreateEmailIdentityResponse->VerifiedForSendingStatus;

    # Returns a L<Paws::PinpointEmail::CreateEmailIdentityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateEmailIdentity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailIdentity => Str

The email address or domain that you want to verify.



=head2 Tags => ArrayRef[PinpointEmail_Tag]

An array of objects that define the tags (keys and values) that you
want to associate with the email identity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEmailIdentity in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

