
package Paws::CloudFront::CreateCloudFrontOriginAccessIdentity;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_CloudFrontOriginAccessIdentityConfig/;
  has CloudFrontOriginAccessIdentityConfig => (is => 'ro', isa => CloudFront_CloudFrontOriginAccessIdentityConfig, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateCloudFrontOriginAccessIdentity');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2019-03-26/origin-access-identity/cloudfront');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudFront::CreateCloudFrontOriginAccessIdentityResult');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CloudFrontOriginAccessIdentityConfig' => {
                                                           'class' => 'Paws::CloudFront::CloudFrontOriginAccessIdentityConfig',
                                                           'type' => 'CloudFront_CloudFrontOriginAccessIdentityConfig'
                                                         }
             },
  'IsRequired' => {
                    'CloudFrontOriginAccessIdentityConfig' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateCloudFrontOriginAccessIdentity - Arguments for method CreateCloudFrontOriginAccessIdentity on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCloudFrontOriginAccessIdentity2019_03_26 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateCloudFrontOriginAccessIdentity2019_03_26.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCloudFrontOriginAccessIdentity2019_03_26.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateCloudFrontOriginAccessIdentityResult =
      $cloudfront->CreateCloudFrontOriginAccessIdentity(
      CloudFrontOriginAccessIdentityConfig => {
        CallerReference => 'Mystring',
        Comment         => 'Mystring',

      },

      );

    # Results:
    my $CloudFrontOriginAccessIdentity =
      $CreateCloudFrontOriginAccessIdentityResult
      ->CloudFrontOriginAccessIdentity;
    my $ETag     = $CreateCloudFrontOriginAccessIdentityResult->ETag;
    my $Location = $CreateCloudFrontOriginAccessIdentityResult->Location;

# Returns a L<Paws::CloudFront::CreateCloudFrontOriginAccessIdentityResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateCloudFrontOriginAccessIdentity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CloudFrontOriginAccessIdentityConfig => CloudFront_CloudFrontOriginAccessIdentityConfig

The current configuration information for the identity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCloudFrontOriginAccessIdentity2019_03_26 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

