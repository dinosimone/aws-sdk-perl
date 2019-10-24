# Generated from json/callargs_class.tt

package Paws::SecretsManager::DeleteResourcePolicy;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecretsManager::Types qw//;
  has SecretId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteResourcePolicy');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SecretsManager::DeleteResourcePolicyResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecretId' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'SecretId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::DeleteResourcePolicy - Arguments for method DeleteResourcePolicy on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourcePolicy on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method DeleteResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourcePolicy.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    my $DeleteResourcePolicyResponse = $secretsmanager->DeleteResourcePolicy(
      SecretId => 'MySecretIdType',

    );

    # Results:
    my $ARN  = $DeleteResourcePolicyResponse->ARN;
    my $Name = $DeleteResourcePolicyResponse->Name;

    # Returns a L<Paws::SecretsManager::DeleteResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/DeleteResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecretId => Str

Specifies the secret that you want to delete the attached
resource-based policy for. You can specify either the Amazon Resource
Name (ARN) or the friendly name of the secret.

If you specify an ARN, we generally recommend that you specify a
complete ARN. You can specify a partial ARN tooE<mdash>for example, if
you donE<rsquo>t include the final hyphen and six random characters
that Secrets Manager adds at the end of the ARN when you created the
secret. A partial ARN match can work as long as it uniquely matches
only one secret. However, if your secret has a name that ends in a
hyphen followed by six characters (before Secrets Manager adds the
hyphen and six characters to the ARN) and you try to use that as a
partial ARN, then those characters cause Secrets Manager to assume that
youE<rsquo>re specifying a complete ARN. This confusion can cause
unexpected results. To avoid this situation, we recommend that you
donE<rsquo>t create secret names that end with a hyphen followed by six
characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourcePolicy in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

