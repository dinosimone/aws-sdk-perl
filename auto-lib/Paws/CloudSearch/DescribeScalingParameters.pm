# Generated from callargs_class.tt

package Paws::CloudSearch::DescribeScalingParameters;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw//;
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeScalingParameters');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudSearch::DescribeScalingParametersResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeScalingParametersResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DomainName' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'DomainName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeScalingParameters - Arguments for method DescribeScalingParameters on L<Paws::CloudSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScalingParameters on the
L<Amazon CloudSearch|Paws::CloudSearch> service. Use the attributes of this class
as arguments to method DescribeScalingParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScalingParameters.

=head1 SYNOPSIS

    my $cloudsearch = Paws->service('CloudSearch');
    my $DescribeScalingParametersResponse =
      $cloudsearch->DescribeScalingParameters(
      DomainName => 'MyDomainName',

      );

    # Results:
    my $ScalingParameters =
      $DescribeScalingParametersResponse->ScalingParameters;

    # Returns a L<Paws::CloudSearch::DescribeScalingParametersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudsearch/DescribeScalingParameters>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScalingParameters in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

