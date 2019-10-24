# Generated from callargs_class.tt

package Paws::ELB::DescribeLoadBalancerPolicyTypes;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ELB::Types qw//;
  has PolicyTypeNames => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeLoadBalancerPolicyTypes');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ELB::DescribeLoadBalancerPolicyTypesOutput');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeLoadBalancerPolicyTypesResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PolicyTypeNames' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeLoadBalancerPolicyTypes - Arguments for method DescribeLoadBalancerPolicyTypes on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLoadBalancerPolicyTypes on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method DescribeLoadBalancerPolicyTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLoadBalancerPolicyTypes.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To describe a load balancer policy type defined by Elastic Load Balancing
    # This example describes the specified load balancer policy type.
    my $DescribeLoadBalancerPolicyTypesOutput =
      $elasticloadbalancing->DescribeLoadBalancerPolicyTypes(
      'PolicyTypeNames' => ['ProxyProtocolPolicyType'] );

    # Results:
    my $PolicyTypeDescriptions =
      $DescribeLoadBalancerPolicyTypesOutput->PolicyTypeDescriptions;

    # Returns a L<Paws::ELB::DescribeLoadBalancerPolicyTypesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DescribeLoadBalancerPolicyTypes>

=head1 ATTRIBUTES


=head2 PolicyTypeNames => ArrayRef[Str|Undef]

The names of the policy types. If no names are specified, describes all
policy types defined by Elastic Load Balancing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLoadBalancerPolicyTypes in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

