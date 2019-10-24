# Generated from callargs_class.tt

package Paws::AutoScaling::DescribeMetricCollectionTypes;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AutoScaling::Types qw//;

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeMetricCollectionTypes');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AutoScaling::DescribeMetricCollectionTypesAnswer');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeMetricCollectionTypesResult');

    sub params_map {
    our $Params_map ||= {}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeMetricCollectionTypes - Arguments for method DescribeMetricCollectionTypes on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMetricCollectionTypes on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DescribeMetricCollectionTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMetricCollectionTypes.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To describe the Auto Scaling metric collection types
    # This example describes the available metric collection types.
    my $DescribeMetricCollectionTypesAnswer =
      $autoscaling->DescribeMetricCollectionTypes();

    # Results:
    my $Granularities = $DescribeMetricCollectionTypesAnswer->Granularities;
    my $Metrics       = $DescribeMetricCollectionTypesAnswer->Metrics;

   # Returns a L<Paws::AutoScaling::DescribeMetricCollectionTypesAnswer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeMetricCollectionTypes>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMetricCollectionTypes in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

