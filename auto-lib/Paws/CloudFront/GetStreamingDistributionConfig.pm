
package Paws::CloudFront::GetStreamingDistributionConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw//;
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetStreamingDistributionConfig');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2019-03-26/streaming-distribution/{Id}/config');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudFront::GetStreamingDistributionConfigResult');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'ParamInURI' => {
                    'Id' => 'Id'
                  },
  'IsRequired' => {
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetStreamingDistributionConfig - Arguments for method GetStreamingDistributionConfig on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStreamingDistributionConfig2019_03_26 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method GetStreamingDistributionConfig2019_03_26.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStreamingDistributionConfig2019_03_26.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $GetStreamingDistributionConfigResult =
      $cloudfront->GetStreamingDistributionConfig(
      Id => 'Mystring',

      );

    # Results:
    my $ETag = $GetStreamingDistributionConfigResult->ETag;
    my $StreamingDistributionConfig =
      $GetStreamingDistributionConfigResult->StreamingDistributionConfig;

   # Returns a L<Paws::CloudFront::GetStreamingDistributionConfigResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/GetStreamingDistributionConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The streaming distribution's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStreamingDistributionConfig2019_03_26 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

