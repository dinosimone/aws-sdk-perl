
package Paws::CloudFront::UpdatePublicKey;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_PublicKeyConfig/;
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IfMatch => (is => 'ro', isa => Str, predicate => 1);
  has PublicKeyConfig => (is => 'ro', isa => CloudFront_PublicKeyConfig, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdatePublicKey');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2019-03-26/public-key/{Id}/config');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudFront::UpdatePublicKeyResult');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IfMatch' => {
                              'type' => 'Str'
                            },
               'PublicKeyConfig' => {
                                      'class' => 'Paws::CloudFront::PublicKeyConfig',
                                      'type' => 'CloudFront_PublicKeyConfig'
                                    },
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'ParamInURI' => {
                    'Id' => 'Id'
                  },
  'ParamInHeader' => {
                       'IfMatch' => 'If-Match'
                     },
  'IsRequired' => {
                    'PublicKeyConfig' => 1,
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdatePublicKey - Arguments for method UpdatePublicKey on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePublicKey2019_03_26 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdatePublicKey2019_03_26.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePublicKey2019_03_26.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdatePublicKeyResult = $cloudfront->UpdatePublicKey(
      Id              => 'Mystring',
      PublicKeyConfig => {
        CallerReference => 'Mystring',
        EncodedKey      => 'Mystring',
        Name            => 'Mystring',
        Comment         => 'Mystring',
      },
      IfMatch => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $ETag      = $UpdatePublicKeyResult->ETag;
    my $PublicKey = $UpdatePublicKeyResult->PublicKey;

    # Returns a L<Paws::CloudFront::UpdatePublicKeyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdatePublicKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

ID of the public key to be updated.



=head2 IfMatch => Str

The value of the C<ETag> header that you received when retrieving the
public key to update. For example: C<E2QWRUHAPOMQZL>.



=head2 B<REQUIRED> PublicKeyConfig => CloudFront_PublicKeyConfig

Request to update public key information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePublicKey2019_03_26 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

