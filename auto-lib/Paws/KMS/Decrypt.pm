# Generated from json/callargs_class.tt

package Paws::KMS::Decrypt;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::KMS::Types qw/KMS_EncryptionContextType/;
  has CiphertextBlob => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EncryptionContext => (is => 'ro', isa => KMS_EncryptionContextType, predicate => 1);
  has GrantTokens => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'Decrypt');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::KMS::DecryptResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GrantTokens' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'CiphertextBlob' => {
                                     'type' => 'Str'
                                   },
               'EncryptionContext' => {
                                        'class' => 'Paws::KMS::EncryptionContextType',
                                        'type' => 'KMS_EncryptionContextType'
                                      }
             },
  'IsRequired' => {
                    'CiphertextBlob' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::Decrypt - Arguments for method Decrypt on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Decrypt on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method Decrypt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Decrypt.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To decrypt data
    # The following example decrypts data that was encrypted with a customer
    # master key (CMK) in AWS KMS.
    my $DecryptResponse = $kms->Decrypt( 'CiphertextBlob' => '<binary data>' );

    # Results:
    my $KeyId     = $DecryptResponse->KeyId;
    my $Plaintext = $DecryptResponse->Plaintext;

    # Returns a L<Paws::KMS::DecryptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/Decrypt>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CiphertextBlob => Str

Ciphertext to be decrypted. The blob includes metadata.



=head2 EncryptionContext => KMS_EncryptionContextType

The encryption context. If this was specified in the Encrypt function,
it must be specified here or the decryption operation will fail. For
more information, see Encryption Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context).



=head2 GrantTokens => ArrayRef[Str|Undef]

A list of grant tokens.

For more information, see Grant Tokens
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token)
in the I<AWS Key Management Service Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Decrypt in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

