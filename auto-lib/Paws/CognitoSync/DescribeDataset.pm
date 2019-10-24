
package Paws::CognitoSync::DescribeDataset;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoSync::Types qw//;
  has DatasetName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IdentityId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IdentityPoolId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeDataset');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoSync::DescribeDatasetResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IdentityPoolId' => {
                                     'type' => 'Str'
                                   },
               'DatasetName' => {
                                  'type' => 'Str'
                                },
               'IdentityId' => {
                                 'type' => 'Str'
                               }
             },
  'ParamInURI' => {
                    'IdentityPoolId' => 'IdentityPoolId',
                    'DatasetName' => 'DatasetName',
                    'IdentityId' => 'IdentityId'
                  },
  'IsRequired' => {
                    'IdentityPoolId' => 1,
                    'DatasetName' => 1,
                    'IdentityId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::DescribeDataset - Arguments for method DescribeDataset on L<Paws::CognitoSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataset on the
L<Amazon Cognito Sync|Paws::CognitoSync> service. Use the attributes of this class
as arguments to method DescribeDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataset.

=head1 SYNOPSIS

    my $cognito-sync = Paws->service('CognitoSync');
    my $DescribeDatasetResponse = $cognito -sync->DescribeDataset(
      DatasetName    => 'MyDatasetName',
      IdentityId     => 'MyIdentityId',
      IdentityPoolId => 'MyIdentityPoolId',

    );

    # Results:
    my $Dataset = $DescribeDatasetResponse->Dataset;

    # Returns a L<Paws::CognitoSync::DescribeDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-sync/DescribeDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetName => Str

A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9,
'_' (underscore), '-' (dash), and '.' (dot).



=head2 B<REQUIRED> IdentityId => Str

A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.



=head2 B<REQUIRED> IdentityPoolId => Str

A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataset in L<Paws::CognitoSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

