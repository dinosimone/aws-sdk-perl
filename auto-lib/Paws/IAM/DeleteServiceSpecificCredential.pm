# Generated from callargs_class.tt

package Paws::IAM::DeleteServiceSpecificCredential;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw//;
  has ServiceSpecificCredentialId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserName => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteServiceSpecificCredential');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserName' => {
                               'type' => 'Str'
                             },
               'ServiceSpecificCredentialId' => {
                                                  'type' => 'Str'
                                                }
             },
  'IsRequired' => {
                    'ServiceSpecificCredentialId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::DeleteServiceSpecificCredential - Arguments for method DeleteServiceSpecificCredential on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteServiceSpecificCredential on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method DeleteServiceSpecificCredential.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteServiceSpecificCredential.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    $iam->DeleteServiceSpecificCredential(
      ServiceSpecificCredentialId => 'MyserviceSpecificCredentialId',
      UserName                    => 'MyuserNameType',                # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/DeleteServiceSpecificCredential>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceSpecificCredentialId => Str

The unique identifier of the service-specific credential. You can get
this value by calling ListServiceSpecificCredentials.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters that can
consist of any upper or lowercased letter or digit.



=head2 UserName => Str

The name of the IAM user associated with the service-specific
credential. If this value is not specified, then the operation assumes
the user whose credentials are used to call the operation.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteServiceSpecificCredential in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

